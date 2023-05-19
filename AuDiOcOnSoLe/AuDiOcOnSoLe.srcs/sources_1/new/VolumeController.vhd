library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VolumeController is
    Generic(
        AXIS_TDATA_WIDTH : integer	:= 24;
        VOLUME_BITS      : positive := 10;
        N_VOLUME         : positive := 6
    );
    Port (         
        aclk             :   in   STD_LOGIC;   
        aresetn         :   in   STD_LOGIC;  

        ------------AXI4-Stream--slave-------------
        S_AXIS_TVALID	:   in   STD_LOGIC;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master
        S_AXIS_TDATA	:   in 	 STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle
        S_AXIS_TREADY	:   out  STD_LOGIC := '1';
        -- AXI4Stream tLAST to distinguish between left and right channel
        S_AXIS_TLAST	:   in   STD_LOGIC;
        --------------------------------------------

        ------------AXI4-Stream--master-------------
        M_AXIS_TREADY	:   in 	 STD_LOGIC;
        -- Data in
        M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0) := (Others =>'0');
        -- AXI4Stream tLAST to distinguish between left and right channel
        M_AXIS_TLAST	:   out  STD_LOGIC;
        -- Data is in valid
        M_AXIS_TVALID	:   out  STD_LOGIC := '0';
        --------------------------------------------

        volume          : in STD_LOGIC_VECTOR(VOLUME_BITS-1 downto 0)
    );
end VolumeController;

architecture Behavioral of VolumeController is

    -- we take the 10-N bits as a counter to know in which interval we are,
    -- but 1 bit is used to discriminate between divide/multiply so 10-N-1 
    -- max_vol is the number of intervals we've got
    -- vol_N is the interval we are in, based on the volume input
    constant  max_vol : positive := 2**(VOLUME_BITS - N_VOLUME - 1);
    signal    vol_N   : integer  := 0;

    -- abs data used to define when clipping is needed
    signal    abs_data : std_logic_vector(AXIS_TDATA_WIDTH-1 DOWNTO 0);

    -- states for the state machine
	type state_type is (RECEIVE, SEND_L, SEND_R);
	signal state     : state_type;

begin

    -- absolute value of input data 
    abs_data <= std_logic_vector(abs(signed(S_AXIS_TDATA)));

    -- process to handle the data
    -- everything is handled by states in a single process, to stay in sync between incoming and outgoing data
    FSM : process (aresetn, aclk)
    begin
        if aresetn = '0' then
        -- TODO should the reset get handled?
        -- reset is not handled
        elsif rising_edge(aclk) then

            case state is

                when RECEIVE =>

                    -- process the data on the data line only if it's valid and indeed for the left channel
                    if s_axis_tvalid = '1' then

                        
                        -- if the MSB of volume is 1, the value is >= 512, so the volume has the volume has to be increased,
                        -- thus the data to be multiplied, otherwise divided
                        -- the multiplicatio and division is implementet with a bitshift in the according direction by vol_N bits
                        if(volume(volume'high) = '0') then

                            -- calculate the volume range we must be in
                            -- namely the number of bits to shift
                            -- on every transitioning value the bit volume(N_VOLUME-1) is 1
                            -- then take the three bits above, namely volume(VOLUME_BITS-2 downto N_VOLUME) which represent a unsigned in the range from 0 to max_vol, so we've got our N
                            -- if we have to throttle the volume subtract this from the maximum possible N
                            vol_N <= (max_vol - (to_integer(unsigned(volume(VOLUME_BITS-2 downto N_VOLUME))) + to_integer(unsigned(volume(N_VOLUME-1 DOWNTO N_VOLUME-1)))));
                            
                            -- to save a clock cycle we put the data directly on the axis line
                            m_axis_tdata <= std_logic_vector(shift_right(signed(S_AXIS_TDATA),vol_N));

                        elsif (volume(volume'high) = '1') then

                            -- as discussed above, but now assign it directly without the subtraction from the max value
                            vol_N <= (to_integer(unsigned(volume(VOLUME_BITS-2 downto N_VOLUME))) + to_integer(unsigned(volume(N_VOLUME-1 DOWNTO N_VOLUME-1)))); 

                            -- if the left most N bits of the absolute value of the data are different than 0,
                            -- it means that a shift would bring the data outside of range and thus the signal has to be clipped at it's maximum possible value
                            if unsigned(abs_data((abs_data'high) downto (abs_data'high- vol_N))) /= 0 then

                                -- if the highest bit of the incoming data is 0, the value is positive and so has to be the clipping,
                                -- otherwise the data is negative and the clipping has to occur at the minimum
                                if s_axis_tdata(s_axis_tdata'high) = '0' then
                                    m_axis_tdata <= (m_axis_tdata'high => '0', Others => '1');
                                elsif s_axis_tdata(s_axis_tdata'high) = '1' then
                                    m_axis_tdata <= (m_axis_tdata'high => '1', Others => '0');
                                end if;

                            else
                                m_axis_tdata <= std_logic_vector(shift_left(signed(S_AXIS_TDATA), vol_N));
                            end if;

                        end if;


                        -- discriminate between left and right channel, if tlast = '1' -> right channel, otherwise left 
                        if s_axis_tlast = '0' then
                            
                            -- since it is the left channel,  put tlast to 0
                            m_axis_tlast <= '0';
                            -- set the next state to be in the sending of the left data
                            state <= SEND_L;

                        else
                            
                            -- since it is the right channel,  put tlast to 0
                            m_axis_tlast <= '1';
                            -- set the next state to be in the sending of the right data
                            state <= SEND_R;
                            
                        end if;

                        -- don't receive any more data
                        s_axis_tready <= '0';
                        -- set the data on the line to valid
                        m_axis_tvalid <= '1';

                    end if;
                        
                when SEND_L | SEND_R =>

                    -- if the receiver has received the data and is ready, invalidate the data on the line, and change back to receiving mode for the other channel
                    if m_axis_tready = '1' then

                        -- invalidate the data on the line only after the right channel data was received
                        if state = SEND_R  then
                            m_axis_tvalid <= '0';
                        end if;
                    
                        -- communicate that we're ready to receive data
                        s_axis_tready <= '1';
                        -- set the next state to be the receiving of data
                        state <= RECEIVE;

                    end if;

            end case;


        end if;    
    end process;

end Behavioral;

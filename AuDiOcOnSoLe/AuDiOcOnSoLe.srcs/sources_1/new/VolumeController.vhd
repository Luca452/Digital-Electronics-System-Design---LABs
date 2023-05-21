------------ LIBRARIES -------------
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;
------------------------------------
---------------------------------------CODE EXPLANATION----------------------------------------------

-- FSM EXPLANATION, same as other modules, can avoid reading it if already did :)
-- This VHDL code implements a 4-state finite state machine to handle data receiving/processing/transmitting in a serial manner.
-- The machine waits for data of both channels and performs appropriate processing before transmitting it.
-- The choice of a 4-state finite state machine is justified by the nature of the input data, which arrives in a sequential manner,
-- since left and right channels data is known to arrive one after the other in a single packet.
-- By employing a serial approach, we ensure the safety and simplicity of data handling.
-- Additionally, employing serial data transmission simplifies the design and implementation of the system
-- by eliminating the need for complex parallel data handling mechanisms.
-- This is possible considering that the frequency of the AXI protocol clock is significantly higher than that of the audio signals.
-- Overall, this design choice optimizes data handling efficiency while ensuring reliability and ease of implementation.
-----------------------------------------------------------------------------------------------------
entity VolumeController is
    Generic(
        AXIS_TDATA_WIDTH : positive	:= 24;
        VOLUME_BITS      : positive := 10;
        N_VOLUME         : positive range 1 to 9 := 6
    );
    Port (         
        aclk            :   in   STD_LOGIC;   
        aresetn         :   in   STD_LOGIC;  

        ------------AXI4-Stream--slave-------------
        S_AXIS_TVALID	:   in   STD_LOGIC;
        -- Data coming from the master
        S_AXIS_TDATA	:   in 	 STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle
        S_AXIS_TREADY	:   out  STD_LOGIC := '0';
        -- AXI4Stream TLAST to distinguish between left and right channel
        S_AXIS_TLAST	:   in   STD_LOGIC;
        --------------------------------------------

        ------------AXI4-Stream--master-------------
        M_AXIS_TREADY	:   in 	 STD_LOGIC;
        -- Data output
        M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0) := (Others =>'0');
        -- AXI4Stream TLAST to distinguish between left and right channel
        M_AXIS_TLAST	:   out  STD_LOGIC;
        --TVALID indicates if data on the bus is valid
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

    -- signal to save the data for the right channel
    signal data_R : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);

    -- register needed to synchronize abs value and data on same clock edge
    signal S_AXIS_TDATA_reg : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);


begin

    -- process to handle the data
    -- everything is handled by states in a single process, to stay in sync between incoming and outgoing data
    FSM : process (aresetn, aclk)

        -- variable to save the elaborated channel data
        -- here a variable is used since its value is updated instantly, and we can use it without waiting for the next process invocation
        -- doing so, we can elaborate the data directly and then assign it to the corrisponding channel without the need of duplicating the code
        variable data : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    begin
        if aresetn = '0' then
        -- TODO should the reset get handled?
        -- reset is not handled
        elsif rising_edge(aclk) then

            -- absolute value of input data, as for the mobile mean filter case, this operation can't be performed in dataflow,
            -- since the longer path through carry blocks delays too much the signal
            abs_data <= std_logic_vector(abs(signed(S_AXIS_TDATA)));
            S_AXIS_TDATA_reg <= S_AXIS_TDATA;
            
            --abs_data <= std_logic_vector(abs(signed(S_AXIS_TDATA)));

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
                            -- if we have to decrease the volume subtract this from the maximum possible N
                            vol_N <= (max_vol - (to_integer(unsigned(volume(VOLUME_BITS-2 downto N_VOLUME))) 
                                              +  to_integer(unsigned(volume(N_VOLUME-1 DOWNTO N_VOLUME-1)))));
                            
                            -- to save a clock cycle we put the data directly on the axis line
                            data := std_logic_vector(shift_right(signed(S_AXIS_TDATA_reg),vol_N));

                        elsif (volume(volume'high) = '1') then

                            -- as discussed above, but now assign it directly without the subtraction from the max value
                            vol_N <= (to_integer(unsigned(volume(VOLUME_BITS-2 downto N_VOLUME))) 
                                    + to_integer(unsigned(volume(N_VOLUME-1 DOWNTO N_VOLUME-1)))); 

                            -- if the left most N bits of the absolute value of the data are different than 0,
                            -- it means that a shift would bring the data outside of range and thus the signal has to be clipped at it's maximum possible value
                            if unsigned(abs_data((abs_data'high) downto (abs_data'high- vol_N))) /= 0 then
                                -- if the highest bit of the incoming data is 0, the value is positive and so has to be the clipping,
                                -- otherwise the data is negative and the clipping has to occur at the minimum
                                if s_axis_tdata_reg(s_axis_tdata_reg'high) = '0' then
                                    data := (data'high => '0', Others => '1');
                                elsif s_axis_tdata_reg(s_axis_tdata_reg'high) = '1' then
                                    data := (data'high => '1', Others => '0');
                                end if;
                            else
                                -- no clipping, shift
                                data := std_logic_vector(shift_left(signed(S_AXIS_TDATA_reg), vol_N));
                            end if;

                        end if;


                        -- discriminate between left and right channel, if tlast = '1' -> right channel, otherwise left 
                        if s_axis_tlast = '0' then
                            -- if we received the data for the let channel, put the elaborated data dirctly on the outgoing axis lines
                            m_axis_tdata <= data;

                            -- stay in Receive mode, since we have to receive also the right channel
                            s_axis_tready <= '1';
                        else   
                            -- if the received data is for the right channel, save it, since we have to send the left one first
                            data_R <= data;

                            -- set the next state to be in the sending of the left data
                            state <= SEND_L;

                            -- don't receive any more data
                            s_axis_tready <= '0';

                            -- since it is the left channel,  put tlast to 0
                            m_axis_tlast <= '0';

                            -- set the data on the line to valid
                            m_axis_tvalid <= '1';

                        end if;

                    end if;
                        
                when SEND_L =>

                    -- if the receiver is ready to receive more data, start the sending of the right one 
                    if m_axis_tready = '1' then

                        -- put the saved data for the right channel on the line
                        m_axis_tdata <= data_R;

                        -- since it is the right channel, put tlast to 1
                        m_axis_tlast <= '1';

                        -- set the next state to be in the sending of the right data 
                        state <= SEND_R;

                    end if;

                when SEND_R =>

                    -- if the receiver is ready to receive more data, means it has received all the previous one and we can go on receiving some new data 
                    if m_axis_tready = '1' then

                        -- invalidate the data on the line
                        m_axis_tvalid <= '0';

                        -- communicate that we're ready to receive data
                        s_axis_tready <= '1';

                        -- set the next state to be the receiving of data
                        state <= RECEIVE;

                    end if;

            end case;


        end if;    
    end process;

end Behavioral;

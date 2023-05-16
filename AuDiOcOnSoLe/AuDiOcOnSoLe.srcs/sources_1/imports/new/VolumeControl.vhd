library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VolumeControl is
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
end VolumeControl;

architecture Behavioral of VolumeControl is

    -- we take the 10-N bits as a counter to know in which interval we are,
    -- but 1 bit is used to discriminate between divide/multiply so 10-N-1 
    constant  max_vol : positive := 2**(VOLUME_BITS - N_VOLUME - 1)-1;
    signal    vol_N   : integer  := 0;

    -- abs data used to define when clipping is needed
    signal    abs_data : std_logic_vector(AXIS_TDATA_WIDTH-1 DOWNTO 0);

    -- signals that hold the volume data
    signal data_L    : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);
    signal data_R    : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0);

    -- states for the TX state machine
	type tx_state_type is (IDLE, SEND_L, SEND_R);
	signal tx_state      : tx_state_type;


begin
    -- absolute value of input data 
    abs_data <= std_logic_vector(abs(signed(S_AXIS_TDATA)));
    -- calculate the volume range we must be in
    vol_N <= (max_vol - to_integer(unsigned(volume(VOLUME_BITS-2 downto N_VOLUME)))) when (volume(volume'left) = '0' and volume(N_VOLUME-1) = '1') 
        else to_integer(unsigned(volume(VOLUME_BITS-2 downto N_VOLUME)))             when (volume(volume'left) = '1' and volume(N_VOLUME-1) = '1'); 


    -- process to handle the axis receive part
    RX : process (aresetn, aclk)
    begin
        if aresetn = '0' then
            -- da fare
        elsif rising_edge(aclk) then

            if s_axis_tvalid = '1' then

                -- assign the data to the internal register discriminating between L or R through the TLAST signal
                if s_axis_tlast = '0' then

                    if(volume(volume'left) = '0') then
                        data_L <= std_logic_vector(shift_right(signed(S_AXIS_TDATA),vol_N));
                    elsif (volume(volume'left) = '1') then
                        -- CLIPPING 
                        if unsigned(abs_data((abs_data'left) downto (abs_data'left - vol_N))) /= 0 then
                            data_L <= (data_L'left => '0', Others => '1');
                        else
                            data_L <= std_logic_vector(shift_left(signed(S_AXIS_TDATA), vol_N));
                        end if;
                    end if;

                else

                    if(volume(volume'high) = '0') then
                        data_R <= std_logic_vector(shift_right(signed(S_AXIS_TDATA),vol_N));
                    elsif (volume(volume'left) = '1') then
                        -- CLIPPING 
                        if unsigned(abs_data((abs_data'left) downto (abs_data'left - vol_N))) /= 0 then
                            data_R <= (data_R'left => '0', Others => '1');
                        else
                            data_R <= std_logic_vector(shift_left(signed(S_AXIS_TDATA), vol_N));
                        end if;
                    end if;
                    
                end if;
            end if;

        end if;    
    end process;


-- process to handle the axis send part
    TX : process (aresetn, aclk)
    begin
        if aresetn = '0' then
            -- da fare
        elsif rising_edge(aclk) then

            -- FSM for sending the left and right channel
            case tx_state is

                when IDLE =>
                    m_axis_tvalid <= '0';
                    if(S_AXIS_TVALID = '1') then
                        if(s_axis_tlast = '0') then
                            m_axis_tdata <= data_L;
                            m_axis_tlast <= '0';
                            tx_state <= SEND_L;
                        else 
                            m_axis_tdata <= data_R;
                            m_axis_tlast <= '1';
                            tx_state <= SEND_R;
                        end if;
                    end if;

                when SEND_L =>
                    m_axis_tvalid <= '1';
                    if m_axis_tready = '1' then
                        tx_state <= IDLE;
                    end if;
                        
                when SEND_R =>
                    m_axis_tvalid <= '1';
                    if m_axis_tready = '1' then
                        tx_state <= IDLE;
                    end if;                        

            end case;
            
        end if;
    end process;

end Behavioral;






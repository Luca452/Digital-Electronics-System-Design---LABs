library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Volume is
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
end Volume;

architecture Behavioral of Volume is

    -- we take the 10-N bits as a counter to know in which interval we are,
    -- but 1 bit is used to discriminate between divide/multiply so 10-N-1 
    constant  max_vol : positive := 2**(VOLUME_BITS - N_VOLUME - 1)-1;
    signal    vol_N   : integer  := 0;

    signal    abs_data : std_logic_vector(AXIS_TDATA_WIDTH-1 DOWNTO 0);


begin

    abs_data <= std_logic_vector(abs(signed(S_AXIS_TDATA)));
    
    process(aresetn, aclk)
    begin
        if(aresetn = '0') then
            -- da fare
        elsif rising_edge(aclk) then
            -- if MSB of volume is '0' then divide, else multiply
            if(volume(volume'high) = '0') then
                vol_N <=  max_vol - to_integer(unsigned(volume(VOLUME_BITS-2 downto N_VOLUME)));
                abs_data <= std_logic_vector(unsigned(abs_data) srl vol_N);
            else
                vol_N <=  to_integer(unsigned(volume(VOLUME_BITS-2 downto N_VOLUME)));
                -- CLIPPING 
                if unsigned(abs_data((abs_data'HIGH-1) downto (abs_data'HIGH - vol_N))) /= 0 then
                    abs_data <= (abs_data'HIGH => '0', Others => '1');
                else
                    abs_data <= std_logic_vector(unsigned(abs_data) sll vol_N);
                end if;
            end if;
        end if;
    end process;

    -- process to handle the axis receive part
    RX : process (aresetn, aclk)
        variable vol_N : natural := 0;
    begin
        if aresetn = '0' then
        -- TODO should the reset get handled?
        -- reset is not handled
        elsif rising_edge(aclk) then

            if s_axis_tvalid = '1' then
                -- NON SO COSA STO FACENDO AAAAAAAAAAAAAAAAAA
                -- assign the data to the internal register depending on the fact if it is data for the right or for the left channel. Discriminating by the tlast signal
                if s_axis_tlast = '0' then
                    data_reg_l <= data_reg;
                    s_axis_tready <= '1';
                else
                    data_reg_r <= data_reg;
                    s_axis_tready <= '1';
                end if;
            end if;

        end if;    
    end process;


-- process to handle the axis send part
    TX : process (aresetn, aclk)
    begin
        if aresetn = '0' then
        -- TODO should the reset get handled?
        -- reset is not handled
        elsif rising_edge(aclk) then

            -- FSM for sending the left and right channel
            case tx_state is

                when IDLE =>
                    m_axis_tvalid <= '0';
                    m_axis_tlast <= '0';

                when SEND_L =>
                    m_axis_tdata <= data_reg_l;
                    m_axis_tlast <= '0';
                    m_axis_tvalid <= '1';

                    if m_axis_tready = '1' then
                        tx_state <= SEND_R;
                    end if;
                        
                when SEND_R =>
                    m_axis_tdata <= data_reg_r;
                    m_axis_tlast <= '1';
                    m_axis_tvalid <= '1';

                    if m_axis_tready = '1' then
                        tx_state <= IDLE;
                    end if;                        

            end case;
            
        end if;
    end process;

end Behavioral;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.05.2023 15:45:41
-- Design Name: 
-- Module Name: BalanceController - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BalanceController is
    Generic(
        BALANCE_BITS     : integer := 10
        AXIS_TDATA_WIDTH : integer	:= 24;
        N_BALANCE         : positive := 6
    );
    Port (         
        aclk            :   in   STD_LOGIC;   
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

        balance          : in STD_LOGIC_VECTOR(BALANCE_BITS - 1 downto 0)
    );
end BalanceController;

architecture Behavioral of BalanceController is
    -- we take the 10-N bits as a counter to know in which interval we are,
    -- but MSB bit is used to discriminate between pan left/right so 10-N-1 
    constant  max_balance : positive := 2**(BALANCE_BITS - N_BALANCE - 1)-1;
    signal    bal_N   : integer  := 0;
begin    
    -- process to handle the axis receive part
    RX : process (aresetn, aclk)
    begin
        if aresetn = '0' then
            -- TODO should the reset get handled?
            -- reset is not handled
        elsif rising_edge(aclk) then

            if s_axis_tvalid = '1' then

                if s_axis_tlast = '0' then  --left channel
                    data_reg_l <= s_axis_tdata;
                    s_axis_tready <= '1';

                    --if balance > 544 (joystick moved right I hope) then left channel has to be attenuated 
                    if(balance > '544') then
                        bal_N <=  max_balance - to_integer(unsigned(balance(VOLUME_BITS-2 downto N_BALANCE)));
                        data_reg_l <= data_reg_l srl bal_N;
                    end if;
                    
                else                        --right channel
                    data_reg_r <= s_axis_tdata;
                    s_axis_tready <= '1';

                    --if balance < 480 (joystick moved left I hope) then right channel has to be attenuated 
                    if(balance < '480') then
                        bal_N <=  to_integer(unsigned(balance(VOLUME_BITS-2 downto N_BALANCE)));
                        data_reg_r <= data_reg_r srl bal_N;
                    end if;
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
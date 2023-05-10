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
        BALANCE_BITS     : integer := 9
    );
    Port (         
        aclk            :   in   STD_LOGIC;   
        aresetn         :   in   STD_LOGIC;  
    
        m_axis_tvalid   : out STD_LOGIC;
        m_axis_tdata    : out STD_LOGIC_VECTOR(23 downto 0);
        m_axis_tready   : in  STD_LOGIC;
        m_axis_tlast    : out STD_LOGIC;

        s_axis_tvalid   : in  STD_LOGIC;
        s_axis_tdata    : in  STD_LOGIC_VECTOR(23 downto 0);
        s_axis_tready   : out STD_LOGIC;
        s_axis_tlast    : in  STD_LOGIC;

        balance          : in STD_LOGIC_VECTOR(BALANCE_BITS downto 0)
    );
end BalanceController;

architecture Behavioral of BalanceController is
    -- maximum single side value of the balance 
    -- to substract from the total value to align the volume controll around zero
    constant SUB_PADDING : integer := 2**BALANCE_BITS;

    -- states for the TX state machine
	type tx_state_type is (IDLE, SEND_L, SEND_R);
	signal tx_state      : tx_state_type;
    
    -- signal to hold the absolute positive value of the pan, adjusted to have a maximum of 512
    signal pos_bal       : std_logic_vector(balance'HIGH downto 0);
    
    -- signal to hold the logarithmic balance level
    signal bal_N         : natural range 0 to BALANCE_BITS;
    
    -- signals that hold the volume data
    signal data_reg_l    : std_logic_vector(23 downto 0);
    signal data_reg_r    : std_logic_vector(23 downto 0);

begin
    pos_bal <= std_logic_vector(abs(signed(unsigned(balance) - SUB_PADDING)));

    --Need to implement the priority encoder right
    --it will output bal_N which is 
    
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
                else                        --right channel
                    data_reg_r <= s_axis_tdata;
                    s_axis_tready <= '1';
                    new_data <= '1';
                end if;

            end if;

        end if;    
    end process;


    dataprocess: process (aresetn, aclk)
    begin
        if aresetn = '0' then
            -- TODO should the reset get handled?
            -- reset is not handled
        elsif rising_edge(aclk) then
            if new_data = '1' then
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jstk_uart_bridge_0 is
	generic (
		HEADER_CODE		: std_logic_vector(7 downto 0) := x"c0"; -- Header of the packet
		TX_DELAY		: positive := 1_000_000;    -- Pause (in clock cycles) between two packets
		JSTK_BITS		: integer range 1 to 7 := 7    -- Number of bits of the joystick axis to transfer to the PC 
	);
	Port ( 
		aclk 			: in  STD_LOGIC;
		aresetn			: in  STD_LOGIC;

		-- Data going TO the PC (i.e., joystick position and buttons state)
		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(7 downto 0);
		m_axis_tready	: in STD_LOGIC

		-- Data coming FROM the PC (i.e., LED color)
		--s_axis_tvalid	: in STD_LOGIC;
		--s_axis_tdata	: in STD_LOGIC_VECTOR(7 downto 0);
		--s_axis_tready	: out STD_LOGIC;

		--jstk_x			: in std_logic_vector(9 downto 0);
		--jstk_y			: in std_logic_vector(9 downto 0);
		--btn_jstk		: in std_logic;
		--btn_trigger		: in std_logic;

		--led_r			: out std_logic_vector(7 downto 0);
		--led_g			: out std_logic_vector(7 downto 0);
		--led_b			: out std_logic_vector(7 downto 0)
	);
end jstk_uart_bridge_0;

architecture Behavioral of jstk_uart_bridge_0 is

    signal counter_delay : natural range 0 to TX_DELAY;

	-- These are examples of FSM states, you can use these if you want.

	type tx_state_type is (DELAY, SEND_HEADER, SEND_JSTK_X, SEND_JSTK_Y, SEND_BUTTONS);
	signal tx_state : tx_state_type := DELAY;

	-- ...

	--------------------------------------------

	--type rx_state_type is (IDLE, GET_HEADER, GET_LED_R, GET_LED_G, GET_LED_B);
	--signal rx_state			: rx_state_type;
	
	-- ...

begin

    with tx_state select m_axis_tvalid <= 
        '0' when DELAY,
        '1' when SEND_HEADER,
        '1' when SEND_JSTK_X,
        '1' when SEND_JSTK_Y,
        '1' when SEND_BUTTONS;

    FSM_TX : process(aclk ,aresetn)
    begin
        if aresetn = '0' then
            tx_state		<= DELAY;

        elsif rising_edge(aclk) then

            case tx_state is

                when DELAY => 
                    if counter_delay = TX_DELAY then
                        counter_delay <= 0;
                        tx_state <= SEND_HEADER;
                    else 
                        counter_delay <= counter_delay + 1;
                        tx_state <= DELAY;
                    end if;
        
                when SEND_HEADER =>
                    if m_axis_tready = '1' then 
                        m_axis_tdata <= HEADER_CODE;
                        tx_state <= SEND_JSTK_X;
                    end if;
                        
                when SEND_JSTK_X =>
                    if m_axis_tready = '1' then 
                        m_axis_tdata <= x"c1";
                        tx_state <= SEND_JSTK_Y;
                    end if;

                when SEND_JSTK_Y =>
                    if m_axis_tready = '1' then 
                        m_axis_tdata <= x"c2";
                        tx_state <= SEND_BUTTONS;
                    end if;

                when SEND_BUTTONS =>
                    if m_axis_tready = '1' then 
                        m_axis_tdata <= x"c3";
                        tx_state <= DELAY;
                    end if;


            end case;

        end if;

    end process;

end architecture;



 
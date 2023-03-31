library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity digilent_jstk2 is
	generic (
		DELAY_US		: integer := 25;    -- Delay (in us) between two packets
		CLKFREQ		 	: integer := 100_000_000;  -- Frequency of the aclk signal (in Hz)
		SPI_SCLKFREQ 	: integer := 66_666 -- Frequency of the SPI SCLK clock signal (in Hz)
	);
	Port (
		aclk 			: in  STD_LOGIC;
		aresetn			: in  STD_LOGIC;

		-- Data going TO the SPI IP-Core (and so, to the JSTK2 module)
		m_axis_tvalid	: out STD_LOGIC;
		m_axis_tdata	: out STD_LOGIC_VECTOR(7 downto 0);
		m_axis_tready	: in STD_LOGIC;

		-- Data coming FROM the SPI IP-Core (and so, from the JSTK2 module)
		-- There is no tready signal, so you must be always ready to accept and use the incoming data, or it will be lost!
		s_axis_tvalid	: in STD_LOGIC;
		s_axis_tdata	: in STD_LOGIC_VECTOR(7 downto 0)

		-- Joystick and button values read from the module
		--jstk_x			: out std_logic_vector(9 downto 0);
		--jstk_y			: out std_logic_vector(9 downto 0);
		--btn_jstk		: out std_logic;
		--btn_trigger		: out std_logic

		-- LED color to send to the module
		--led_r			: in std_logic_vector(7 downto 0);
		--led_g			: in std_logic_vector(7 downto 0);
		--led_b			: in std_logic_vector(7 downto 0)
	);
end digilent_jstk2;

architecture Behavioral of digilent_jstk2 is

    signal led_r : std_logic_vector(7 downto 0) := x"FF";
    signal led_g : std_logic_vector(7 downto 0) := x"FF";
    signal led_b : std_logic_vector(7 downto 0) := x"FF";

	-- Code for the SetLEDRGB command, see the JSTK2 datasheet.
	constant CMDSETLEDRGB		: std_logic_vector(7 downto 0) := x"84";

	-- Do not forget that you MUST wait a bit between two packets. See the JSTK2 datasheet (and the SPI IP-Core README).
	-- Inter-packet delay plus the time needed to transfer 1 byte (for the CS de-assertion)
	constant DELAY_CYCLES		: integer := DELAY_US * (CLKFREQ / 1_000_000) + CLKFREQ / SPI_SCLKFREQ;

	------------------------------------------------------------

	-- These are examples of FSM states, you can use these if you want.

	type state_cmd_type is (WAIT_DELAY, SEND_CMD, SEND_RED, SEND_GREEN, SEND_BLUE, SEND_DUMMY);
	signal state_cmd			: state_cmd_type;

    signal tx_delay_counter     : natural range DELAY_CYCLES downto 0 := 0; 
	------------------------------------------------------------

	type state_sts_type is (GET_X_LSB, GET_X_MSB, GET_Y_LSB, GET_Y_MSB, GET_BUTTONS);
	signal state_sts			: state_sts_type := GET_X_LSB;


begin


    -- change level of m_axis_tvalid based on the tx-state we are in
    with state_cmd select m_axis_tvalid <=
        '0' when WAIT_DELAY,
        '1' when Others;

    -- process for handling the trasmisson part towards the SPI-Ip-Core
    TX_FSM : process(aclk, aresetn)
    begin
        if (aresetn = '0') then

            state_cmd <= WAIT_DELAY;
            tx_delay_counter <= 0;

        elsif rising_edge(aclk) then

            -- act depending on the state we are in
            case state_cmd is

                -- if we are in the wait phase between two packets, 
                -- increment a counter every clock front until the wait time has elapsed. 
                -- Then change state to sending the command
                when WAIT_DELAY =>
                    if tx_delay_counter = DELAY_CYCLES then
                        tx_delay_counter <= 0;
                        state_cmd <= SEND_CMD;
                    else
                        tx_delay_counter <= tx_delay_counter + 1;
                    end if;


                -- in the following states the command for sending the LED Color is send onto the AXI-Stream and then the RGB Values
                -- if the AXI-Slave has received the data (m_axis_tready = '1') the state is changed to the following one
                when SEND_CMD =>
                    --if m_axis_tvalid = '1' then
                    --end if;
                    if m_axis_tready = '1' then
                        m_axis_tdata <= CMDSETLEDRGB;
                        state_cmd <= SEND_RED;
                    end if;


                when SEND_RED =>
                    --if m_axis_tvalid = '1' then
                         
                    --end if;

                    if m_axis_tready = '1' then
                        m_axis_tdata <= led_r;
                        state_cmd <= SEND_GREEN;
                    end if;

                when SEND_GREEN =>
                    --if m_axis_tvalid = '1' then
                         
                    --end if;

                    if m_axis_tready = '1' then
                        m_axis_tdata <= led_g;
                        state_cmd <= SEND_BLUE;
                    end if;


                when SEND_BLUE =>
                    --if m_axis_tvalid = '1' then
                         
                    --end if;

                    if m_axis_tready = '1' then
                        m_axis_tdata <= led_b;
                        state_cmd <= SEND_DUMMY;
                    end if;


                when SEND_DUMMY =>
                    --if m_axis_tvalid = '1' then
                         
                    --end if;

                    if m_axis_tready = '1' then
                        m_axis_tdata <= (Others => '0');
                        state_cmd <= WAIT_DELAY;
                    end if;

            end case;

        end if;

    end process;

end architecture;


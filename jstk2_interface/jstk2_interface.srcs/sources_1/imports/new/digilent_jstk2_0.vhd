library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity digilent_jstk2 is
	generic (
		DELAY_US		: integer := 25;    -- Delay (in us) between two packets
		CLKFREQ		 	: integer := 100_000_000;  -- Frequency of the aclk signal (in Hz)
		SPI_SCLKFREQ 	: integer := 5_000 -- Frequency of the SPI SCLK clock signal (in Hz)
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
		s_axis_tdata	: in STD_LOGIC_VECTOR(7 downto 0);

		-- Joystick and button values read from the module
		jstk_x			: out std_logic_vector(9 downto 0);
		jstk_y			: out std_logic_vector(9 downto 0);
		btn_jstk		: out std_logic;
		btn_trigger		: out std_logic;

		-- LED color to send to the module
		led_r			: in std_logic_vector(7 downto 0);
		led_g			: in std_logic_vector(7 downto 0);
		led_b			: in std_logic_vector(7 downto 0)
	);
end digilent_jstk2;

architecture Behavioral of digilent_jstk2 is

    -- internal signals to save the incoming data, before putting it on the out lines when the hole data is ready
    signal jstk_x_reg       : std_logic_vector(9 downto 0);
    signal jstk_y_reg       : std_logic_vector(9 downto 0);
    signal btn_jstk_reg     : std_logic;
    signal btn_trigger_reg  : std_logic;
    signal data_ready       : std_logic := '0';


	-- Code for the SetLEDRGB command, see the JSTK2 datasheet.
	constant CMDSETLEDRGB		: std_logic_vector(7 downto 0) := x"84";

	-- Do not forget that you MUST wait a bit between two packets. See the JSTK2 datasheet (and the SPI IP-Core README).
	-- Inter-packet delay plus the time needed to transfer 1 byte (for the CS de-assertion)
	constant DELAY_CYCLES		: integer := DELAY_US * (CLKFREQ / 1_000_000) + CLKFREQ / SPI_SCLKFREQ;

    -- Interbyte delay set to 25us as suggested on the datasheet
    constant DELAY_INTERBYTE    : integer := 2500;

    -- counter that counts the clock cycles befor passing on from the wait state in the TX process 
    signal tx_delay_counter     : natural range 0 to DELAY_CYCLES; 

    -- state signal for the outgoing data to the joystick
	------------------------------------------------------------
	type state_cmd_type is (WAIT_DELAY, DELAY_BYTE, SEND_CMD, SEND_RED, SEND_GREEN, SEND_BLUE, SEND_DUMMY);
	signal state_cmd			: state_cmd_type := WAIT_DELAY;
    signal next_state_cmd       : state_cmd_type := SEND_CMD;
	------------------------------------------------------------

    -- state signal for the incoming data from the joystick
    ------------------------------------------------------------
	type state_sts_type is (GET_X_LSB, GET_X_MSB, GET_Y_LSB, GET_Y_MSB, GET_BUTTONS);
	signal state_sts			: state_sts_type := GET_X_LSB;
    ------------------------------------------------------------

begin


    -- change level of m_axis_tvalid based on the tx-state we are in
    with state_cmd select m_axis_tvalid <=
        '0' when WAIT_DELAY,
        '1' when others;

    -- process for handling the trasmisson part towards the SPI-Ip-Core
    TX_FSM : process(aclk, aresetn)
    begin
        if aresetn = '0' then

        elsif rising_edge(aclk) then

            -- act depending on the state we are in
            case state_cmd is

                -- if we are in the wait phase between two packets, 
                -- increment a counter every clock front until the wait time has elapsed. 
                -- Then change state to sending the command
                when WAIT_DELAY =>
                    if tx_delay_counter = DELAY_CYCLES then
                        tx_delay_counter <= 0;
                        m_axis_tdata <= CMDSETLEDRGB;
                        state_cmd <= SEND_CMD;
                    else
                        tx_delay_counter <= tx_delay_counter + 1;
                        state_cmd <= WAIT_DELAY;
                    end if;

                when DELAY_BYTE => 
                    if tx_delay_counter = DELAY_INTERBYTE then
                        tx_delay_counter <= 0;
                        state_cmd <= next_state_cmd;
                    else
                        tx_delay_counter <= tx_delay_counter + 1;
                        state_cmd <= DELAY_BYTE;
                    end if;
                    
                -- in the following states the command for sending the LED Color is send onto the AXI-Stream and then the RGB Values
                when SEND_CMD =>
                    if m_axis_tready = '1' then
                        next_state_cmd <= SEND_RED;
                        state_cmd <= DELAY_BYTE;
                        m_axis_tdata <= led_r;
                    end if;

                when SEND_RED =>
                    if m_axis_tready = '1' then
                        next_state_cmd <= SEND_GREEN;
                        state_cmd <= DELAY_BYTE;
                        m_axis_tdata <= led_g;
                    end if;

                when SEND_GREEN =>
                    if m_axis_tready = '1' then
                        next_state_cmd <= SEND_BLUE;
                        state_cmd <= DELAY_BYTE;
                        m_axis_tdata <= led_b;
                    end if;

                when SEND_BLUE =>
                    if m_axis_tready = '1' then
                        next_state_cmd <= SEND_DUMMY;
                        state_cmd <= DELAY_BYTE;
                        m_axis_tdata <= x"00";
                    end if;

                when SEND_DUMMY =>
                    if m_axis_tready = '1' then
                        state_cmd <= WAIT_DELAY;
                    end if;
            end case;
        end if;
    end process;


    
    -- process for handling the incoming AXI-Stream data coming from the SPI-Core. (The joystick data)
    RX_FSM : process(aclk, aresetn)
    begin
        if (aresetn = '0') then

        elsif rising_edge(aclk) then

            case state_sts is

                -- the AXI-Stream bus is 8 bit wide, the incoming joystick data 10 bit. 
                -- So first we get the 8 Least significant bits, then in the next state the 2 most significant ones.
                -- after we've got all data (x,y and btn) the data_ready signal is set high and the data saved in the internal registers maped to the outputs of the entity
                when GET_X_LSB =>
                    if s_axis_tvalid = '1' then
                        jstk_x_reg(7 downto 0) <= s_axis_tdata;
                        state_sts <= GET_X_MSB;
                    end if;
                
                -- get X most significant bits
                when GET_X_MSB =>
                    if s_axis_tvalid = '1' then
                        jstk_x_reg(9 downto 8) <= s_axis_tdata(1 downto 0);
                        state_sts <= GET_Y_LSB;
                    end if;

                -- get Y least significant bits
                when GET_Y_LSB =>
                    if s_axis_tvalid = '1' then
                        jstk_y_reg(7 downto 0) <= s_axis_tdata;
                        state_sts <= GET_Y_MSB;
                    end if;

                -- get Y most significant bits
                when GET_Y_MSB =>
                    if s_axis_tvalid = '1' then
                        jstk_y_reg(9 downto 8) <= s_axis_tdata(1 downto 0);
                        state_sts <= GET_BUTTONS;
                    end if;

                -- get button states and set ready for copying the data 
                when GET_BUTTONS =>
                    if s_axis_tvalid = '1' then
                        btn_jstk_reg <= s_axis_tdata(0);
                        btn_trigger_reg <= s_axis_tdata(1);
                        state_sts <= GET_X_LSB;
                        data_ready <= '1';  
                    end if;

            end case;

            -- if all data is arrived, so data_ready is high, copy the data to the external registers
            if data_ready = '1' then
                data_ready <= '0';
                jstk_x <= jstk_x_reg;
                jstk_y <= jstk_y_reg;
                btn_jstk <= btn_jstk_reg;
                btn_trigger <= btn_trigger_reg;
            end if;
        
        end if;
    end process;
end architecture;


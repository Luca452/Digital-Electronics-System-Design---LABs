library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity joystick_tb is
end joystick_tb;

architecture Behavioral of joystick_tb is

    ------------------------ Constant Declaration -------------------------
    -- Constant For Test Bench (TB) --
    constant    RESET_ON    : STD_LOGIC := '0';

    constant    CLK_PERIOD 	: time := 10 ns;
    constant    RESET_WND 	: time := 2 ms;
    ----------------------------------
    ------ Constant For DUT v2 ------
    constant    DUT2_DELAY_US		: integer := 25;    -- Delay (in us) between two packets
    constant    DUT2_CLKFREQ	    : integer := 100_000_000;  -- Frequency of the aclk signal (in Hz)
    constant    DUT2_SPI_SCLKFREQ 	: integer := 66_666; -- Frequency of the SPI SCLK clock signal (in Hz)
    ----------------------------------
    ----------------------------------------------------------------------


    ----------------- Device Under Test (DUT) Declaration ----------------

    ------------ DUT v2 --------------
    COMPONENT  digilent_jstk2_0 
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
    END COMPONENT;
    ----------------------------------------------------------------------

    ------------------------- Signal Declaration -------------------------
    ---------- Reset/Clock ----------
    signal  reset   :   STD_LOGIC := RESET_ON;
    signal  clk     :   STD_LOGIC := '1';
    ---------------------------------

    -------- KittCar ----------------
    --signal  dut2_sw   :   STD_LOGIC_VECTOR(DUT2_NUM_OF_SWS-1 downto 0) := (Others => '0');
    --signal  dut2_leds  :   STD_LOGIC_VECTOR(DUT2_NUM_OF_LEDS-1 downto 0);
    ---------------------------------
    ----------------------------------------------------------------------

begin

    ------------------- Device Under Test (DUT) Wrapper ------------------

    ------------ DUT v2 --------------
    dut2_joystick  :    digilent_jstk2_0

        Generic Map(
            DELAY_US => DUT2_DELAY_US,		
		    CLKFREQ =>	DUT2_CLKFREQ,	
		    SPI_SCLKFREQ =>   DUT2_SPI_SCLKFREQ
        )
        Port Map(
            ---------- Reset/Clock ----------
            aresetn  => reset,
            aclk    => clk
            ---------------------------------
            ------------- Data --------------
            --sw => dut2_sw,
		    --leds => dut2_leds
            ---------------------------------
        );
    -----------------------------------------------------------------------

    -------------------------- Signals Generation -------------------------

    ------ TB Clk Generation -------
    clk	<= not clk after CLK_PERIOD/2;
    ---------------------------------

    ----- TB Reset Generation ------
    reset_wave : process
    begin

        reset <= RESET_ON;
        wait for RESET_WND;

        reset <= not RESET_ON;
        wait;

    end process;
    ---------------------------------

    -- TB din pattern Generation ---
    dut2_din_pattern : process
    begin
        --not needed to wait for reset window since sw remain always at 0
        --dut2_sw <= (Others => '0');
        wait;

    end process;
    ---------------------------------
    -----------------------------------------------------------------------
end Behavioral;

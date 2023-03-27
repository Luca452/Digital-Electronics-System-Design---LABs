---------- DEFAULT LIBRARY ---------
library IEEE;
	use IEEE.STD_LOGIC_1164.all;
	use IEEE.NUMERIC_STD.ALL;
------------------------------------

entity tb_KittCar is
end tb_KittCar;

architecture Behavioral of tb_KittCar is


    ------------------------ Constant Declaration -------------------------
    -- Constant For Test Bench (TB) --
    constant    RESET_ON    :   STD_LOGIC := '1';

    constant    CLK_PERIOD 	: time := 10 ns;
    constant    RESET_WND 	: time := 2 ms;
    ----------------------------------
    ------ Constant For DUT v2 ------
    constant    DUT2_NUM_OF_SWS  :   NATURAL    := 16;
    constant    DUT2_NUM_OF_LEDS   :   POSITIVE   := 16;
    constant    DUT2_CLK_PERIOD_NS	   :   POSITIVE   := 10;
    constant    DUT2_MIN_KITT_CAR_STEP_MS    :   POSITIVE    := 2;
    constant    DUT2_TAIL_LENGTH    :   INTEGER := 4;
    ----------------------------------
    ----------------------------------------------------------------------


    ----------------- Device Under Test (DUT) Declaration ----------------

    ------------ DUT v2 --------------
    COMPONENT   KittCarPWM
        Generic(
            CLK_PERIOD_NS			:	POSITIVE    := 10;	-- clk period in nanoseconds
		    MIN_KITT_CAR_STEP_MS	:	POSITIVE    := 2;	-- Minimum step period in milliseconds (i.e., value in milliseconds of Delta_t)

		    NUM_OF_SWS		:	INTEGER	 := 16;	-- Number of input switches
		    NUM_OF_LEDS		:	INTEGER  := 16;	-- Number of output LEDs

            TAIL_LENGTH		:	INTEGER	:= 4	-- Tail length
        );
        Port (
           ------- Reset/Clock --------
		    reset	:	IN	STD_LOGIC;
		    clk		:	IN	STD_LOGIC;
		    ----------------------------

		    -------- LEDs/SWs ----------
		    sw		:	IN	STD_LOGIC_VECTOR(NUM_OF_SWS-1 downto 0);	-- Switches avaiable on Basys3
		    leds	:	OUT	STD_LOGIC_VECTOR(NUM_OF_LEDS-1 downto 0)	-- LEDs avaiable on Basys3
		    ----------------------------
        );
    END COMPONENT;
    ----------------------------------------------------------------------

    ------------------------- Signal Declaration -------------------------
    ---------- Reset/Clock ----------
    signal  reset   :   STD_LOGIC := RESET_ON;
    signal  clk     :   STD_LOGIC := '1';
    ---------------------------------

    -------- KittCar ----------------
    signal  dut2_sw   :   STD_LOGIC_VECTOR(DUT2_NUM_OF_SWS-1 downto 0) := (Others => '0');
    signal  dut2_leds  :   STD_LOGIC_VECTOR(DUT2_NUM_OF_LEDS-1 downto 0);
    ---------------------------------
    ----------------------------------------------------------------------

begin

    ------------------- Device Under Test (DUT) Wrapper ------------------

    ------------ DUT v2 --------------
    dut2_KittCarPWM   :   KittCarPWM

        Generic Map(
            CLK_PERIOD_NS => DUT2_CLK_PERIOD_NS,		
		    MIN_KITT_CAR_STEP_MS =>	DUT2_MIN_KITT_CAR_STEP_MS,	
		    NUM_OF_SWS =>   DUT2_NUM_OF_SWS,
		    NUM_OF_LEDS =>	DUT2_NUM_OF_LEDS,
            TAIL_LENGTH => DUT2_TAIL_LENGTH
        )
        Port Map(
            ---------- Reset/Clock ----------
            reset  => reset,
            clk    => clk,
            ---------------------------------
            ------------- Data --------------
            sw => dut2_sw,
		    leds => dut2_leds
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
        dut2_sw <= (Others => '0');
        wait;

    end process;
    ---------------------------------
    -----------------------------------------------------------------------
end Behavioral;

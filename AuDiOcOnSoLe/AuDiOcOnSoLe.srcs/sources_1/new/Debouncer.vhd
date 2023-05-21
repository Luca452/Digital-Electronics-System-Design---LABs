------------ LIBRARIES -------------
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
------------------------------------

entity Debouncer is
    generic (
		-- Set debouncing time and clk frequency
		DEBOUNCE_MS		: positive := 10;
		CLOCK_FREQ		: positive := 100_000_000
	);
	Port (
		-- Clock and reset
		clk				: in std_logic;
		reset			: in std_logic;

		-- I/Os
		input_signal	: in std_logic;
		debounced		: out std_logic
	);
end Debouncer;

architecture Behavioral of Debouncer is
    
    constant COUNTER_HIGH	: integer := CLOCK_FREQ / 1000 * DEBOUNCE_MS - 1;

	signal debounced_int	: std_logic;
	signal counter			: integer range 0 to COUNTER_HIGH;

begin

    -- To be able to read the value of the "debounced" port,
	-- we declare an internal signal 
	debounced	<= debounced_int;

	process(clk, reset)
	begin
		-- when reset is high assign input to output and reset counter
		if reset = '1' then

			debounced_int	<= input_signal;
			counter			<= 0;

		elsif rising_edge(clk) then

			-- if counter elapsed, assign input to output
			if counter = 0 then

				-- Keep sampling input_signal.
				debounced_int	<= input_signal;

				-- If input_signal has changed from the last sample, 
				-- start the timer
				if debounced_int /= input_signal then
					counter		<= COUNTER_HIGH;
				end if;
			
			-- if counter /= 0, keep decreasing it
			else
				-- When the timer is running, no change is recorded, so the
				-- output stays constant.
				counter	 <= counter - 1;
			end if;

		end if;
	end process;

end Behavioral;

--------DEFAULT LIBRARIES-----------
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;
    use IEEE.MATH_REAL.ALL;
------------------------------------

entity AveragingLogic is
    Generic(
        DATA_WIDTH              : integer := 24;
        AVERAGING_WINDOW_SIZE   : integer := 32 
    );
    Port ( 
        aresetn	: in std_logic;
        clk		: in std_logic;

        din_plus    : IN std_logic_vector(DATA_WIDTH-1 downto 0);
        din_minus   : IN std_logic_vector(DATA_WIDTH-1 downto 0);

        fifo_full    : IN std_logic;
        wr_en        : IN std_logic;

        avg_val      : OUT std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end AveragingLogic;

architecture Behavioral of AveragingLogic is

    constant SUM_TOTAL_LENGTH : positive := (DATA_WIDTH + positive(ceil(log2(real(AVERAGING_WINDOW_SIZE))))) ;
    signal SUM_TOTAL : unsigned(SUM_TOTAL_LENGTH-1 downto 0);
begin

    process(clk, aresetn)
    begin 
        if rising_edge(clk) then
            if aresetn = '0' then
            else
                if(wr_en = '1' AND fifo_full = '0') then
                    SUM_TOTAL <= SUM_TOTAL + unsigned(din_plus);
                elsif(wr_en = '1' AND fifo_full = '1') then
                    SUM_TOTAL <= SUM_TOTAL + unsigned(din_plus);
                    SUM_TOTAL <= SUM_TOTAL - unsigned(din_minus);
                    avg_val <= std_logic_vector(SUM_TOTAL(SUM_TOTAL_LENGTH-1 downto SUM_TOTAL_LENGTH-DATA_WIDTH-1));
                end if;
            end if;
        end if;
    end process;

end Behavioral;

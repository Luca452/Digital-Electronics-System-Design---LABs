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
    
        wr_en        : IN std_logic;
        avg_val      : OUT std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end AveragingLogic;

architecture Behavioral of AveragingLogic is

    constant SUM_TOTAL_LENGTH : positive := (DATA_WIDTH + positive(ceil(log2(real(AVERAGING_WINDOW_SIZE))))) ;
    signal SUM_TOTAL : signed(SUM_TOTAL_LENGTH-1 downto 0) := (others => '0') ;

begin

    process(clk, aresetn)
    begin 
        if rising_edge(clk) then
            if aresetn = '0' then
            else
                if(wr_en = '1') then
                    SUM_TOTAL <= SUM_TOTAL + signed(std_logic_vector(resize(signed(din_plus),SUM_TOTAL_LENGTH))) - signed(std_logic_vector(resize(signed(din_minus),SUM_TOTAL_LENGTH)));
                    avg_val <= std_logic_vector(SUM_TOTAL(SUM_TOTAL_LENGTH-1 downto SUM_TOTAL_LENGTH-DATA_WIDTH));
                end if;
            end if;
        end if;
    end process;

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity C2G is
    generic(
        ADD_VALUE	: integer range 0 to 255 := 1;
		TDATA_WIDTH	: positive := 8
    );
    port(
        clk				: in std_logic;
		resetn			: in std_logic;

		s_axis_tvalid	: in std_logic;
		s_axis_tdata	: in std_logic_vector(TDATA_WIDTH-1 downto 0);
		s_axis_tready	: out std_logic;

		m_axis_tvalid	: out std_logic;
		m_axis_tdata	: out std_logic_vector(TDATA_WIDTH-1 downto 0);
		m_axis_tready	: in std_logic
    );
end C2G;

architecture Behavioral of C2G is

    type state_type is (IDLE,RECEIVE,TRANSMIT);
    signal state : state_type := IDLE;

    signal counter : unsigned(1 downto 0):= (others => '0') ;
	signal result : unsigned(TDATA_WIDTH-1 downto 0);

begin
    with state select m_axis_tvalid <= 
        '0' when IDLE,
        '0' when RECEIVE,
        '1' when TRANSMIT;

    with state select s_axis_tready <= 
        '0' when IDLE,
        '0' when TRANSMIT,
        '1' when RECEIVE;

        FSM : process(clk, resetn)
        begin
            if resetn = '0' then
                state		<= IDLE;
    
            elsif rising_edge(clk) then
    
                case state is
    
                    when IDLE =>
                        state	<= RECEIVE;
    
                    when RECEIVE =>
                        if s_axis_tvalid = '1' then
                            if to_integer(counter) = 3 then 
                                counter <= (others =>'0');
                                m_axis_tdata <= std_logic_vector(result);
                                state	<= TRANSMIT;
                            else 
                                result <= result + unsigned(s_axis_tdata);
                                counter <= counter + 1;
                                state <= RECEIVE;
                            end if; 
                        end if;
    
                    when TRANSMIT =>
                        result <= (others => '0'); 
                        if m_axis_tready = '1' then
                            state			<= RECEIVE;
                        end if;
    
                end case;
    
            end if;
        end process;
end Behavioral;

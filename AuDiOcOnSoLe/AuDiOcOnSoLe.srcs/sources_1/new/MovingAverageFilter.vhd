library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;


entity MovingAverageFilter is
    Generic(
        AXIS_TDATA_WIDTH	: integer	:= 24;
        AVERAGE_BUFF_SIZE   : integer   := 32
    );
    Port (
        aclk             :   in   STD_LOGIC;   
        aresetn         :   in   STD_LOGIC;  

        ------------AXI4-Stream--slave-------------
        S_AXIS_TVALID	:   in   STD_LOGIC;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        S_AXIS_TDATA	:   in 	 STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        S_AXIS_TREADY	:   out  STD_LOGIC := '1';
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        S_AXIS_TLAST	:   in   STD_LOGIC;
        --------------------------------------------

         --------------AXI4-Stream--master----------
        M_AXIS_TREADY	:   in 	 STD_LOGIC;
        -- Data in
        M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0)  := (Others =>'0');
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        M_AXIS_TLAST	:   out  STD_LOGIC;
        -- Data is in valid
        M_AXIS_TVALID	:   out  STD_LOGIC  := '0';
        --------------------------------------------

        filter_enable : in std_logic

     );
end MovingAverageFilter;

architecture Behavioral of MovingAverageFilter is

    ---------------------------------------COMPONENTs DECLARATIONS------------------------------------
	-- FIFO modules declaration
	component FIFO
    generic (
        FIFO_WIDTH : natural;
        FIFO_DEPTH : integer
    );
    port (

        -------- Reset/Clock -------
        aresetn	: in std_logic;
        clk		: in std_logic;
        ----------------------------

        --- FIFO Write Interface ---
        wr_en	: in	std_logic;
        din		: in	std_logic_vector(FIFO_WIDTH-1 downto 0);
        full	: out	std_logic;
        ----------------------------

        ---- FIFO Read Interface ---
        rd_en	: in	std_logic;
        dout	: out std_logic_vector(FIFO_WIDTH-1 downto 0);
        empty	: out std_logic
        ----------------------------
    );
    end component;
    -------------------------------------------------------------------------------------------------


begin
    --------------------------------------FIFO MODULES INSTATIATION---------------------------------

    -----Left Channel-----
	inst1: FIFO 
    generic map (
        FIFO_DEPTH => AVERAGE_BUFF_SIZE,
        FIFO_WIDTH => AXIS_TDATA_WIDTH
    )
    port map (
        aresetn  => aresetn,
        clk    => clk
    );

    ----Right Channel----
    inst2: FIFO 
    generic map (
        FIFO_DEPTH => AVERAGE_BUFF_SIZE,
        FIFO_WIDTH => AXIS_TDATA_WIDTH
    )
    port map (
        aresetn  => aresetn,
        clk    => clk
    );

    ------------------------------------------------------------------------------------------------

end Behavioral;

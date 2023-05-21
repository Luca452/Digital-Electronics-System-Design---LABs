------------ LIBRARIES -------------
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
------------------------------------

entity MuteController is
    Generic(
        AXIS_TDATA_WIDTH : positive	:= 24
    );
    Port ( 
        ------------AXI4-Stream--slave-------------
        S_AXIS_TVALID	:   in   STD_LOGIC;
        -- Data coming from the master
        S_AXIS_TDATA	:   in 	 STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle
        S_AXIS_TREADY	:   out  STD_LOGIC;
        -- AXI4Stream TLAST to distinguish between left and right channel
        S_AXIS_TLAST	:   in   STD_LOGIC;
        --------------------------------------------

        ------------AXI4-Stream--master-------------
        M_AXIS_TREADY	:   in 	 STD_LOGIC;
        -- Data output
        M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- AXI4Stream TLAST to distinguish between left and right channel
        M_AXIS_TLAST	:   out  STD_LOGIC;
        --TVALID indicates if data on the bus is valid
        M_AXIS_TVALID	:   out  STD_LOGIC;
        --------------------------------------------
        
        mute_enable     : in STD_LOGIC
    );
end MuteController;

architecture Behavioral of MuteController is

begin
    
    -- pass the controll signals through the module
    M_AXIS_TVALID <= S_AXIS_TVALID;
    S_AXIS_TREADY <= M_AXIS_TREADY;
    M_AXIS_TLAST <= S_AXIS_TLAST;

    -- if the mute is enabled pass only zeros as data, otherwise forward the data received 
    with mute_enable select M_AXIS_TDATA <= 
                                            S_AXIS_TDATA    when '0',
                                            (Others => '0') when '1';

end Behavioral;

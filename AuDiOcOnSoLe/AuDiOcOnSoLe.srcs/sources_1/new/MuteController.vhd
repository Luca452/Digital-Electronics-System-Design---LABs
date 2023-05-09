library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MuteController is
    Port ( 
        m_axis_tvalid   : out STD_LOGIC;
        m_axis_tdata    : out STD_LOGIC_VECTOR(23 downto 0);
        m_axis_tready   : in  STD_LOGIC;
        m_axis_tlast    : out STD_LOGIC;

        s_axis_tvalid   : in  STD_LOGIC;
        s_axis_tdata    : in  STD_LOGIC_VECTOR(23 downto 0);
        s_axis_tready   : out STD_LOGIC;
        s_axis_tlast    : in  STD_LOGIC;

        mute_enable     : in STD_LOGIC
    );
end MuteController;

architecture Behavioral of MuteController is

begin

    -- pass the controll signals through the module
    m_axis_tvalid <= s_axis_tvalid;
    
    s_axis_tready <= m_axis_tready;
    m_axis_tlast <= s_axis_tlast;

    -- if the mute is enable pass only zeros as data, otherwise forward the data received 
    with mute_enable select
        m_axis_tdata <= s_axis_tdata when '0',
                        (Others => '0') when '1';

end Behavioral;

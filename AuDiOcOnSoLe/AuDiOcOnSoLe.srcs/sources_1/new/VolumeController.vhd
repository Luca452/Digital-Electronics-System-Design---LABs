library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VolumeController is
    Generic(
        VOLUME_BITS     : integer := 9
    );
    Port (         
        aclk            :   in   STD_LOGIC;   
        aresetn         :   in   STD_LOGIC;  
    
        m_axis_tvalid   : out STD_LOGIC;
        m_axis_tdata    : out STD_LOGIC_VECTOR(23 downto 0);
        m_axis_tready   : in  STD_LOGIC;
        m_axis_tlast    : out STD_LOGIC;

        s_axis_tvalid   : in  STD_LOGIC;
        s_axis_tdata    : in  STD_LOGIC_VECTOR(23 downto 0);
        s_axis_tready   : out STD_LOGIC;
        s_axis_tlast    : in  STD_LOGIC;

        volume          : in STD_LOGIC_VECTOR(VOLUME_BITS downto 0)
    );
end VolumeController;

architecture Behavioral of VolumeController is

    -- maximum single side value of the volume 
    -- to substract from the total value to align the volume controll around zero
    constant SUB_PADDING : integer := 2**VOLUME_BITS;

    -- states for the TX state machine
	type tx_state_type is (IDLE, SEND_L, SEND_R);
	signal tx_state      : tx_state_type;
    
    -- signal to hold the absolute positive value of the volume, adjusted to have a maximum of 512
    signal pos_vol       : std_logic_vector(volume'HIGH downto 0);
    
    -- signal to hold the logarithmic volume level
    signal vol_N         : natural range 0 to VOLUME_BITS;
    
    -- signals that hold the volume data
    signal data_reg_l    : std_logic_vector(23 downto 0);
    signal data_reg_r    : std_logic_vector(23 downto 0);

begin

    -- TODO take absolute value
    pos_vol <= std_logic_vector(signed(unsigned(volume) - SUB_PADDING));
    
    --TODO think about making it sincronous, advantages? disadvantages?
    -- priority encoder, to get the MSB that is '1'
    PRIO_ENC : process (pos_vol)
    begin
        vol_N <= 0;
        for i in pos_vol'LOW to pos_vol'HIGH loop
            if pos_vol(i) = '1' then
                vol_N <= i;
            end if;
        end loop;
    end process;
    
    
    -- process to handle the axis receive part
    RX : process (aresetn, aclk)
    begin
        if aresetn = '0' then
        -- TODO should the reset get handled?
        -- reset is not handled
        elsif rising_edge(aclk) then

            if s_axis_tvalid = '1' then
                -- TODO multiply the data, aka increase the volume

                if s_axis_tlast = '0' then
                    data_reg_l <= s_axis_tdata;
                    s_axis_tready <= '1';
                else
                    data_reg_r <= s_axis_tdata;
                    s_axis_tready <= '1';
                end if;

            end if;

        end if;    
    end process;


-- process to handle the axis send part
    TX : process (aresetn, aclk)
    begin
        if aresetn = '0' then
        -- TODO should the reset get handled?
        -- reset is not handled
        elsif rising_edge(aclk) then

            -- FSM for sending the left and right channel
            case tx_state is

                when IDLE =>
                    m_axis_tvalid <= '0';
                    m_axis_tlast <= '0';

                when SEND_L =>
                    m_axis_tdata <= data_reg_l;
                    m_axis_tlast <= '0';
                    m_axis_tvalid <= '1';

                    if m_axis_tready = '1' then
                        tx_state <= SEND_R;

                when SEND_R =>
                    m_axis_tdata <= data_reg_r;
                    m_axis_tlast <= '1';
                    m_axis_tvalid <= '1';

                    if m_axis_tready = '1' then
                        tx_state <= IDLE;

            end case;

        end if;
    end process;

end Behavioral;

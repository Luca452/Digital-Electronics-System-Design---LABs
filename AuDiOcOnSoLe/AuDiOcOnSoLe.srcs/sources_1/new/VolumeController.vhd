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
    signal abs_vol       : std_logic_vector(volume'HIGH downto 0);

    -- signal to hold the absolute value of the data
    signal abs_data      : std_logic_vector(s_axis_tdata'HIGH downto 0);
    
    -- signal to multiply and clip the data
    signal data_reg      : std_logic_vector(31 downto 0);

    
    -- signals that hold the volume data
    signal data_reg_l    : std_logic_vector(23 downto 0);
    signal data_reg_r    : std_logic_vector(23 downto 0);

begin

    abs_vol <= std_logic_vector(abs(signed(unsigned(volume) - SUB_PADDING)));
    abs_data <= std_logic_vector(abs(signed(s_axis_tdata)));
    
    -- process to handle the axis receive part
    RX : process (aresetn, aclk)
        variable vol_N : natural := 0;
    begin
        if aresetn = '0' then
        -- TODO should the reset get handled?
        -- reset is not handled
        elsif rising_edge(aclk) then

            -- priority encoder, to get the MSB that is '1'
            for i in abs_vol'LOW to abs_vol'HIGH loop
                if abs_vol(i) = '1' then
                    vol_N := i;
                end if;
            end loop;

            if s_axis_tvalid = '1' then
                -- TODO check if its working. Check the registers where things get passed to. there could be problems, since it is sync

                -- muliply the incoming data only if the volume knob is moved
                if vol_N > 0 then

                    -- check if the N (power of 2 to multiply) MSB have a 1 in them.
                    -- don't consider the MSB, since it is the sign bit
                    -- if they have, the signal has to saturate. So put all the data, except from the sign bit 
                    -- otherwise shift by N
                    -- the sign bit is for shure = '0' since we've taken only the absolute value
                    if unsigned(abs_data((abs_data'HIGH-1) downto (abs_data'HIGH - vol_N))) /= 0 then
                        abs_data <= (abs_data'HIGH => '0', Others => '1');
                    else
                        abs_data <= std_logic_vector(unsigned(abs_data) sll vol_N);
                    end if;

                    -- convert the absolut value back to a signed value, depending on the position of the joystick
                    if unsigned(volume) > 512 then
                        data_reg <= std_logic_vector(signed(abs_data));
                    else 
                        data_reg <= std_logic_vector(-signed(abs_data));
                    end if;

                else
                    data_reg <= s_axis_tdata;
                end if;

                -- assign the data to the internal register depending on the fact if it is data for the right or for the left channel. Discriminating by the tlast signal
                if s_axis_tlast = '0' then
                    data_reg_l <= data_reg;
                    s_axis_tready <= '1';
                else
                    data_reg_r <= data_reg;
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
                    end if;
                        
                when SEND_R =>
                    m_axis_tdata <= data_reg_r;
                    m_axis_tlast <= '1';
                    m_axis_tvalid <= '1';

                    if m_axis_tready = '1' then
                        tx_state <= IDLE;
                    end if;                        

            end case;
            
        end if;
    end process;

end Behavioral;

------------ LIBRARIES -------------
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;
------------------------------------
---------------------------------------CODE EXPLANATION----------------------------------------------

-- FSM EXPLANATION, same as other modules, can avoid reading it if already did :)
-- This VHDL code implements a 4-state finite state machine to handle data receiving/processing/transmitting in a serial manner.
-- The machine waits for data of both channels and performs appropriate processing before transmitting it.
-- The choice of a 4-state finite state machine is justified by the nature of the input data, which arrives in a sequential manner,
-- since left and right channels data is known to arrive one after the other in a single packet.
-- By employing a serial approach, we ensure the safety and simplicity of data handling.
-- Additionally, employing serial data transmission simplifies the design and implementation of the system
-- by eliminating the need for complex parallel data handling mechanisms.
-- This is possible considering that the frequency of the AXI protocol clock is significantly higher than that of the audio signals.
-- Overall, this design choice optimizes data handling efficiency while ensuring reliability and ease of implementation.
-----------------------------------------------------------------------------------------------------
entity BalanceController is
    Generic(
        AXIS_TDATA_WIDTH : positive	:= 24;
        BALANCE_BITS     : positive := 10;
        N_BALANCE        : positive range 1 to 9 := 6
    );
    Port (         
        aclk            :   in   STD_LOGIC;   
        aresetn         :   in   STD_LOGIC;  
    
        ------------AXI4-Stream--slave-------------
        S_AXIS_TVALID	:   in   STD_LOGIC;
        -- Data coming from the master
        S_AXIS_TDATA	:   in 	 STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle
        S_AXIS_TREADY	:   out  STD_LOGIC := '0';
        -- AXI4Stream TLAST to distinguish between left and right channel
        S_AXIS_TLAST	:   in   STD_LOGIC;
        --------------------------------------------

        ------------AXI4-Stream--master-------------
        M_AXIS_TREADY	:   in 	 STD_LOGIC;
        -- Data output
        M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(AXIS_TDATA_WIDTH-1 DOWNTO 0) := (Others =>'0');
        -- AXI4Stream TLAST to distinguish between left and right channel
        M_AXIS_TLAST	:   out  STD_LOGIC;
        --TVALID indicates if data on the bus is valid
        M_AXIS_TVALID	:   out  STD_LOGIC := '0';
        --------------------------------------------

        balance          : in STD_LOGIC_VECTOR(BALANCE_BITS - 1 downto 0)
    );
end BalanceController;

architecture Behavioral of BalanceController is
    -- we take the 10-N bits as a counter to know in which interval we are,
    -- but MSB bit is used to discriminate between pan left/right so 10-N-1 
    constant    max_balance     : positive := 2**(BALANCE_BITS - N_BALANCE - 1);
    signal      bal_N           : integer  := 0;
    signal      DATA_R          : std_logic_vector(AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
    
    -- states for the TX state machine
	type state_type is (RECEIVE_L, RECEIVE_R, SEND_L, SEND_R);
	signal state     : state_type := RECEIVE_L;

begin    

    
    FSM : process (aresetn, aclk)
    begin
        if aresetn = '0' then
        -- TODO should the reset get handled?
        -- reset is not handled
        elsif rising_edge(aclk) then

            case state is

                when RECEIVE_L =>

                    -- process the data only if TVALID = '1', TLAST discriminates between channels. TLAST = 0 => left channel
                    if S_AXIS_TLAST = '0' and S_AXIS_TVALID = '1' then
                        -- if joystick is to the right then attenuate left channel and put it in the bus otherwise write it directly on the bus
                        if (balance(balance'left) = '1') then
                            -- calculate the volume range we must be in
                            -- namely the number of bits to shift
                            -- on every transitioning value the bit volume(N_VOLUME-1) is 1
                            -- then take the three bits above, namely volume(VOLUME_BITS-2 downto N_VOLUME) which represent a unsigned in the range from 0 to max_vol, so we've got our N
                            -- if we have to decrease the volume subtract this from the maximum possible N
                           bal_N <= (to_integer(unsigned(balance(BALANCE_BITS-2 downto N_BALANCE))) 
                           + to_integer(unsigned(balance(N_BALANCE-1 DOWNTO N_BALANCE-1)))); 

                            M_AXIS_TDATA <= std_logic_vector(shift_right(signed(S_AXIS_TDATA), bal_N));
                        else 
                            M_AXIS_TDATA <= S_AXIS_TDATA;
                        end if;

                        -- ready to receive the next data
                        S_AXIS_TREADY <= '1';

                        state <= RECEIVE_R; 
                    end if;

                when RECEIVE_R => 

                    if S_AXIS_TLAST = '1' and S_AXIS_TVALID = '1' then
                        -- if joystick is to the left then attenuate right channel and put it in a register otherwise write it directly in the register
                        if (balance(balance'left) = '0') then
                            -- as discussed above, but now assign it directly without the subtraction from the max value
                            bal_N <= max_balance - (to_integer(unsigned(balance(BALANCE_BITS-2 downto N_BALANCE))) 
                                    + to_integer(unsigned(balance(N_BALANCE-1 DOWNTO N_BALANCE-1))));
                            
                            DATA_R <= std_logic_vector(shift_right(signed(S_AXIS_TDATA), bal_N));
                        else 
                            DATA_R <= S_AXIS_TDATA;
                        end if;

                        -- don't receive any more data
                        S_AXIS_TREADY <= '0';
                        -- ready to send data, set master valid to '1'
                        M_AXIS_TVALID <= '1';
                        -- we need to send the L data first
                        M_AXIS_TLAST <= '0';
                        -- set the next state to be the sending of the left data
                        state <= SEND_L;     
                    end if;
                    
                when SEND_L =>

                    -- if slave is ready, means it read the data on the bus, put new data on the bus and change state
                    if M_AXIS_TREADY = '1' then
                        -- data referring to L channel has been read, now preparing the R channel data on the bus
                        M_AXIS_TDATA <= DATA_R;
                        -- next data is for R channel, set TLAST = '1'
                        M_AXIS_TLAST <= '1';
                        -- set the next state to be the sending of the right data
                        state <= SEND_R;
                    end if;

                when SEND_R =>

                    -- if slave is ready, means it read the data on the bus, go back to receive state
                    if M_AXIS_TREADY = '1' then
                        -- invalidate the data on the line
                        M_AXIS_TVALID <= '0';
                        -- ready to read the signal from the bus
                        S_AXIS_TREADY <= '1';
                        -- set the next state to be the receiving of data
                        state <= RECEIVE_L;
                    end if;
                    
            end case;
        end if;    
    end process;

end Behavioral;
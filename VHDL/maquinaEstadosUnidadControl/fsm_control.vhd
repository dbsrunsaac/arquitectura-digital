library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_control is
    Port (
        clk   : in  std_logic;
        reset : in  std_logic;
        state : out std_logic_vector(1 downto 0)
    );
end entity;

architecture Behavioral of fsm_control is
    type state_type is (FETCH, DECODE, EXECUTE, WRITEBACK);
    signal current_state, next_state: state_type;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= FETCH;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    process(current_state)
    begin
        case current_state is
            when FETCH => next_state <= DECODE;
            when DECODE => next_state <= EXECUTE;
            when EXECUTE => next_state <= WRITEBACK;
            when WRITEBACK => next_state <= FETCH;
            when others => next_state <= FETCH;
        end case;
    end process;

    with current_state select
        state <= "00" when FETCH,
                 "01" when DECODE,
                 "10" when EXECUTE,
                 "11" when WRITEBACK;
end architecture;
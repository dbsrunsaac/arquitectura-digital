library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity desplazamiento8bits is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        shift_in : in STD_LOGIC;
        data_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end entity;

architecture Behavioral of desplazamiento8bits is
    signal reg_data : STD_LOGIC_VECTOR (7 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            reg_data <= (others => '0');
        elsif rising_edge(clk) then
            reg_data <= shift_in & reg_data(7 downto 1);
        end if;
    end process;
    data_out <= reg_data;
end architecture;

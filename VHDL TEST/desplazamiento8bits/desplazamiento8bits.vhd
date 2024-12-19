library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity desplazamiento8bits is
    Port (
        clk : in std_logic;
        en, reset : in std_logic;
		  data_in : in std_logic_vector(7 downto 0);
        shift_in : in std_logic;
        data_out : out std_logic_vector (7 downto 0)
    );
end entity;

architecture Behavioral of desplazamiento8bits is
    signal reg_data : std_logic_vector (7 downto 0);
begin
    process(en, clk, reset)
    begin
		if en = '1' then
        if reset = '1' then
            reg_data <= (others => '0');
        elsif rising_edge(clk) then
				reg_data <= data_in;
            reg_data <= shift_in & data_in(7 downto 1);
        end if;
		else
			reg_data <= (others => '0');
		end if;
    end process;
    data_out <= reg_data;
end architecture;

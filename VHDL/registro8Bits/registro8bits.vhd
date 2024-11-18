library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro8Bits is
    Port (
        clk : in STD_LOGIC;
        en, reset : in STD_LOGIC;
        data_in : in STD_LOGIC_VECTOR (7 downto 0);
        data_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end entity ;

architecture Behavioral of registro8Bits is
    signal reg_data : STD_LOGIC_VECTOR (7 downto 0);
begin
    process(clk, reset)
    begin
		if en = '1' then
		
        if reset = '1' then
            reg_data <= (others => '0');
        elsif rising_edge(clk) then
            reg_data <= data_in;
        end if;
		  
		else
			reg_data <= (others => '0');
		end if;
    end process;
    data_out <= reg_data;
end architecture;

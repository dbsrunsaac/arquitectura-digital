 library ieee;
 use ieee.std_logic_1164.all;
 
 
 entity notgate8bits is
 port(
	A : in std_logic_vector(7 downto 0);
	B : out std_logic_vector(7 downto 0)
 );
 end entity;
 
 architecture arch of notgate8bits is
 begin
	B <= not A;
 end;
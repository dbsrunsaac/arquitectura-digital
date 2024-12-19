 library ieee;
 use ieee.std_logic_1164.all;
 
 
 entity orgate8bits is
 port(
	A, B: in std_logic_vector(7 downto 0);
	C : out std_logic_vector(7 downto 0)
 );
 end entity;
 
 architecture arch of orgate8bits is
 begin
	C <= A or B;
 end;
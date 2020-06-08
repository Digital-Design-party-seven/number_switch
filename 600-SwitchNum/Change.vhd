library ieee;
use ieee.std_logic_1164.all;

entity Change is 
	port(
		x1:in std_logic;
		x2:in std_logic_vector(3 downto 0);
		y1:out std_logic_vector(3 downto 0);
		y2:out std_logic_vector(3 downto 0)
	);
end Change;

architecture bruh of Change is 
signal temp:std_logic_vector(7 downto 0);
begin 
	with x1 select y1 <=
		x2 when'0', 
		"0001"when others;

end bruh;
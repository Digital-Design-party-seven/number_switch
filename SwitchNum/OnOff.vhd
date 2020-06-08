library ieee;
use ieee.std_logic_1164.all;

entity OnOff is 
	port(
		clk:in std_logic;
		y1,y2,y3,y4,y5,y6,y7,y8:out std_logic;
		x:in std_logic_vector(3 downto 0);
		pre_result:in std_logic_vector(7 downto 0);
		out_put:out std_logic_vector(7 downto 0)
	);
end OnOff;

architecture bruh of OnOff is 
signal temp:std_logic_vector(7 downto 0);
begin 

	with x select y1 <=
		'1'when"0001",
		'0'when"0010",
		'0'when"0011",
		'0'when"0100",
		'0'when"0101",
		'0'when"0110",
		'0'when"0111",
		'0'when"1000",
		'0'when others;

	with x select y2 <=
		'0'when"0001",
		'1'when"0010",
		'0'when"0011",
		'0'when"0100",
		'0'when"0101",
		'0'when"0110",
		'0'when"0111",
		'0'when"1000",
		'0'when others;

	with x select y3 <=
		'0'when"0001",
		'0'when"0010",
		'1'when"0011",
		'0'when"0100",
		'0'when"0101",
		'0'when"0110",
		'0'when"0111",
		'0'when"1000",
		'0'when others;

	with x select y4 <=
		'0'when"0001",
		'0'when"0010",
		'0'when"0011",
		'1'when"0100",
		'0'when"0101",
		'0'when"0110",
		'0'when"0111",
		'0'when"1000",
		'0'when others;

	with x select y5 <=
		'0'when"0001",
		'0'when"0010",
		'0'when"0011",
		'0'when"0100",
		'1'when"0101",
		'0'when"0110",
		'0'when"0111",
		'0'when"1000",
		'0'when others;

	with x select y6 <=
		'0'when"0001",
		'0'when"0010",
		'0'when"0011",
		'0'when"0100",
		'0'when"0101",
		'1'when"0110",
		'0'when"0111",
		'0'when"1000",
		'0'when others;

	with x select y7 <=
		'0'when"0001",
		'0'when"0010",
		'0'when"0011",
		'0'when"0100",
		'0'when"0101",
		'0'when"0110",
		'1'when"0111",
		'0'when"1000",
		'0'when others;

	with x select y8 <=
		'0'when"0001",
		'0'when"0010",
		'0'when"0011",
		'0'when"0100",
		'0'when"0101",
		'0'when"0110",
		'0'when"0111",
		'1'when"1000",
		'0'when others;

end bruh;
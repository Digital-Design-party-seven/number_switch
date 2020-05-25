library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
entity bRUh is
port
(
	CLK : in std_logic;
	RESET : in std_logic;
	FRAME_NUMBER: in integer range 0 to 3;
	C : out std_logic_vector(1 to 8);
	R : out std_logic_vector(1 to 8)
);
end entity;
architecture arch1 of bRUh is
Type ROM_table8x8 IS array (0 to 7) of std_logic_vector(0 to 7);
Constant FRAME0 : ROM_table8x8 := ( ("00111100"),
("01000010"),
("01000010"),
("01000010"),
("01000010"),
("01000010"),
("01000010"),
("00111100"));
Constant FRAME1 : ROM_table8x8 := ( ("00001000"),
("00011000"),
("00001000"),
("00001000"),
("00001000"),
("00001000"),
("00001000"),
("00011100"));
Constant FRAME2 : ROM_table8x8 := ( ("00111100"),
("01000010"),
("00000010"),
("00000100"),
("00001000"),
("00010000"),
("00100000"),
("01111110"));
Constant FRAME3 : ROM_table8x8 := ( ("00111100"),
("01000010"),
("00000010"),
("00011100"),
("00000010"),
("00000010"),
("01000010"),
("00111100"));
signal rowRotor : std_logic_vector(0 to 7) := "10000000";
signal rowCounter : integer range 0 to 7 := 0;
signal frame : ROM_table8x8;
begin
with FRAME_NUMBER select
frame <= FRAME0 when 0,
FRAME1 when 1,
FRAME2 when 2,
FRAME3 when others;

process( CLK, RESET ) is
begin
if (RESET = '1') then
	rowCounter <= 0;
	rowRotor <= "10000000";
elsif (rising_edge(CLK)) then
	C <= not frame(rowCounter);
	R <= rowRotor;
	rowRotor <= rowRotor(7) & rowRotor(0 to 6);
	rowCounter <= rowCounter + 1;
end if;
end process;
end architecture;
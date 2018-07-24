library ieee;

use ieee.std_logic_1164.all;


entity Decode7Seg is 
	port(
			signal input4: in std_logic_vector( 3 downto 0);
			signal segs: out std_logic_vector(6 downto 0);
			signal dig1: out std_logic
		);
end entity;


architecture behaviour of Decode7Seg is
begin

	dig1 <= '0';
	
	segs <= 	"0000001" when input4 = "0000" else
				"1001111" when input4 = "0001" else
				"0010010" when input4 = "0010" else
				"0000110" when input4 = "0011" else
				"1001100" when input4 = "0100" else
				"0100100" when input4 = "0101" else
				"0100000" when input4 = "0110" else
				"0001111" when input4 = "0111" else
				"0000000" when input4 = "1000" else
				"0000100" when input4 = "1001" else
				"1111111";
   
	
end architecture;
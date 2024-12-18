library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Bin2BCD is

	port(binInput  : in std_logic_vector(7 downto 0);
		  BCDOut : out std_logic_vector(11 downto 0)
		  );

end Bin2BCD;

architecture Behavioral of Bin2BCD is
begin

  BCDOut <= "000000000001" when (binInput = "00000001") else  --1
				"000000000010" when (binInput = "00000010") else  --2	
				"000000000011" when (binInput = "00000011") else  --3
				"000000000100" when (binInput = "00000100") else  --4
				"000000000101" when (binInput = "00000101") else  --5
				"000000000110" when (binInput = "00000110") else  --6
				"000000000111" when (binInput = "00000111") else  --7
				"000000001000" when (binInput = "00001000") else  --8
				"000000001001" when (binInput = "00001001") else  --9
				"000000010000" when (binInput = "00001010") else  --10
				"000000010001" when (binInput = "00001011") else  --11
				"000000010010" when (binInput = "00001100") else  --12
				"000000010011" when (binInput = "00001101") else  --13
				"000000010100" when (binInput = "00001110") else  --14
				"000000010101" when (binInput = "00001111") else  --15
				
				"000000010110" when (binInput = "00010000") else
				"000000010111" when (binInput = "00010001") else
				"000000011000" when (binInput = "00010010") else
				"000000011001" when (binInput = "00010011") else
				"000000100000" when (binInput = "00010100") else
				"000000100001" when (binInput = "00010101") else
				"000000100010" when (binInput = "00010110") else
				"000000100011" when (binInput = "00010111") else
				"000000100100" when (binInput = "00011000") else
				"000000100101" when (binInput = "00011001") else
				"000000100110" when (binInput = "00011010") else
				"000000100111" when (binInput = "00011011") else
				"000000101000" when (binInput = "00011100") else
				"000000101001" when (binInput = "00011101") else
				"000000110000" when (binInput = "00011110") else
				"000000110001" when (binInput = "00011111") else --31
				
				"000000110010" when (binInput = "00100000") else
				"000000110011" when (binInput = "00100001") else
				"000000110100" when (binInput = "00100010") else
				"000000110101" when (binInput = "00100011") else
				"000000110110" when (binInput = "00100100") else
				"000000110111" when (binInput = "00100101") else
				"000000111000" when (binInput = "00100110") else
				"000000111001" when (binInput = "00100111") else
				"000001000000" when (binInput = "00101000") else
				"000001000001" when (binInput = "00101001") else
				"000001000010" when (binInput = "00101010") else
				"000001000011" when (binInput = "00101011") else
				"000001000100" when (binInput = "00101100") else
				"000001000101" when (binInput = "00101101") else
				"000001000110" when (binInput = "00101110") else
				"000001000111" when (binInput = "00101111") else --47
				
				"000001001000" when (binInput = "00110000") else
				"000001001001" when (binInput = "00110001") else
				"000001010000" when (binInput = "00110010") else
				"000001010001" when (binInput = "00110011") else
				"000001010010" when (binInput = "00110100") else
				"000001010011" when (binInput = "00110101") else
				"000001010100" when (binInput = "00110110") else
				"000001010101" when (binInput = "00110111") else
				"000001010110" when (binInput = "00111000") else
				"000001010111" when (binInput = "00111001") else
				"000001011000" when (binInput = "00111010") else
				"000001011001" when (binInput = "00111011") else
				"000001100000" when (binInput = "00111100") else
				"000001100001" when (binInput = "00111101") else
				"000001100010" when (binInput = "00111110") else
				"000001100011" when (binInput = "00111111") else  --63
				
				"000001100100" when (binInput = "01000000") else
				"000001100101" when (binInput = "01000001") else
				"000001100110" when (binInput = "01000010") else
				"000001100111" when (binInput = "01000011") else
				"000001101000" when (binInput = "01000100") else
				"000001101001" when (binInput = "01000101") else
				"000001110000" when (binInput = "01000110") else
				"000001110001" when (binInput = "01000111") else
				"000001110010" when (binInput = "01001000") else
				"000001110011" when (binInput = "01001001") else
				"000001110100" when (binInput = "01001010") else
				"000001110101" when (binInput = "01001011") else
				"000001110110" when (binInput = "01001100") else
				"000001110111" when (binInput = "01001101") else
				"000001111000" when (binInput = "01001110") else
				"000001111001" when (binInput = "01001111") else --79
				
				"000010000000" when (binInput = "01010000") else
				"000010000001" when (binInput = "01010001") else
				"000010000010" when (binInput = "01010010") else
				"000010000011" when (binInput = "01010011") else
				"000010000100" when (binInput = "01010100") else
				"000010000101" when (binInput = "01010101") else
				"000010000110" when (binInput = "01010110") else
				"000010000111" when (binInput = "01010111") else
				"000010001000" when (binInput = "01011000") else
				"000010001001" when (binInput = "01011001") else
				"000010010000" when (binInput = "01011010") else
				"000010010001" when (binInput = "01011011") else
				"000010010010" when (binInput = "01011100") else
				"000010010011" when (binInput = "01011101") else
				"000010010100" when (binInput = "01011110") else
				"000010010101" when (binInput = "01011111") else --95
				
				"000010010110" when (binInput = "01100000") else
				"000010010111" when (binInput = "01100001") else
				"000010011000" when (binInput = "01100010") else
				"000010011001" when (binInput = "01100011") else
				"000100000000" when (binInput = "01100100") else
				"000100000001" when (binInput = "01100101") else
				"000100000010" when (binInput = "01100110") else
				"000100000011" when (binInput = "01100111") else
				"000100000100" when (binInput = "01101000") else
				"000100000101" when (binInput = "01101001") else
				"000100000110" when (binInput = "01101010") else
				"000100000111" when (binInput = "01101011") else
				"000100001000" when (binInput = "01101100") else
				"000100001001" when (binInput = "01101101") else
				"000100010000" when (binInput = "01101110") else
				"000100010001" when (binInput = "01101111") else --111
				
				"000100010010" when (binInput = "01110000") else
				"000100010011" when (binInput = "01110001") else
				"000100010100" when (binInput = "01110010") else
				"000100010101" when (binInput = "01110011") else
				"000100010110" when (binInput = "01110100") else
				"000100010111" when (binInput = "01110101") else
				"000100011000" when (binInput = "01110110") else
				"000100011001" when (binInput = "01110111") else
				"000100100000" when (binInput = "01111000") else
				"000100100001" when (binInput = "01111001") else
				"000100100010" when (binInput = "01111010") else
				"000100100011" when (binInput = "01111011") else
				"000100100100" when (binInput = "01111100") else
				"000100100101" when (binInput = "01111101") else
				"000100100110" when (binInput = "01111110") else
				"000100100111" when (binInput = "01111111") else --127
				
				"000100101000" when (binInput = "10000000") else
				"000100101001" when (binInput = "10000001") else
				"000100110000" when (binInput = "10000010") else
				"000100110001" when (binInput = "10000011") else
				"000100110010" when (binInput = "10000100") else
				"000100110011" when (binInput = "10000101") else
				"000100110100" when (binInput = "10000110") else
				"000100110101" when (binInput = "10000111") else
				"000100110110" when (binInput = "10001000") else
				"000100110111" when (binInput = "10001001") else
				"000100111000" when (binInput = "10001010") else
				"000100111001" when (binInput = "10001011") else
				"000101000000" when (binInput = "10001100") else
				"000101000001" when (binInput = "10001101") else
				"000101000010" when (binInput = "10001110") else
				"000101000011" when (binInput = "10001111") else  --143
				
				"000101000100" when (binInput = "10010000") else
				"000101000101" when (binInput = "10010001") else
				"000101000110" when (binInput = "10010010") else
				"000101000111" when (binInput = "10010011") else
				"000101001000" when (binInput = "10010100") else
				"000101001001" when (binInput = "10010101") else
				"000101010000" when (binInput = "10010110") else
				"000101010001" when (binInput = "10010111") else
				"000101010010" when (binInput = "10011000") else
				"000101010011" when (binInput = "10011001") else
				"000101010100" when (binInput = "10011010") else
				"000101010101" when (binInput = "10011011") else
				"000101010110" when (binInput = "10011100") else
				"000101010111" when (binInput = "10011101") else
				"000101011000" when (binInput = "10011110") else
				"000101011001" when (binInput = "10011111") else --159
				
				"000101100000" when (binInput = "10100000") else
				"000101100001" when (binInput = "10100001") else
				"000101100010" when (binInput = "10100010") else
				"000101100011" when (binInput = "10100011") else
				"000101100100" when (binInput = "10100100") else
				"000101100101" when (binInput = "10100101") else
				"000101100110" when (binInput = "10100110") else
				"000101100111" when (binInput = "10100111") else
				"000101101000" when (binInput = "10101000") else
				"000101101001" when (binInput = "10101001") else
				"000101110000" when (binInput = "10101010") else
				"000101110001" when (binInput = "10101011") else
				"000101110010" when (binInput = "10101100") else
				"000101110011" when (binInput = "10101101") else
				"000101110100" when (binInput = "10101110") else
				"000101110101" when (binInput = "10101111") else --175
				
				"000101110110" when (binInput = "10110000") else
				"000101110111" when (binInput = "10110001") else
				"000101111000" when (binInput = "10110010") else
				"000101111001" when (binInput = "10110011") else
				"000110000000" when (binInput = "10110100") else
				"000110000001" when (binInput = "10110101") else
				"000110000010" when (binInput = "10110110") else
				"000110000011" when (binInput = "10110111") else
				"000110000100" when (binInput = "10111000") else
				"000110000101" when (binInput = "10111001") else
				"000110000110" when (binInput = "10111010") else
				"000110000111" when (binInput = "10111011") else
				"000110001000" when (binInput = "10111100") else
				"000110001001" when (binInput = "10111101") else
				"000110010000" when (binInput = "10111110") else
				"000110010001" when (binInput = "10111111") else --191
				
				"000110010010" when (binInput = "11000000") else
				"000110010011" when (binInput = "11000001") else
				"000110010100" when (binInput = "11000010") else
				"000110010101" when (binInput = "11000011") else
				"000110010110" when (binInput = "11000100") else
				"000110010111" when (binInput = "11000101") else
				"000110011000" when (binInput = "11000110") else
				"000110011001" when (binInput = "11000111") else
				"001000000000" when (binInput = "11001000") else
				"001000000001" when (binInput = "11001001") else
				"001000000010" when (binInput = "11001010") else
				"001000000011" when (binInput = "11001011") else
				"001000000100" when (binInput = "11001100") else
				"001000000101" when (binInput = "11001101") else
				"001000000110" when (binInput = "11001110") else
				"001000000111" when (binInput = "11001111") else --207
				
				"001000001000" when (binInput = "11010000") else
				"001000001001" when (binInput = "11010001") else
				"001000010000" when (binInput = "11010010") else
				"001000010001" when (binInput = "11010011") else
				"001000010010" when (binInput = "11010100") else
				"001000010011" when (binInput = "11010101") else
				"001000010100" when (binInput = "11010110") else
				"001000010101" when (binInput = "11010111") else
				"001000010110" when (binInput = "11011000") else
				"001000010111" when (binInput = "11011001") else
				"001000011000" when (binInput = "11011010") else
				"001000011001" when (binInput = "11011011") else
				"001000100000" when (binInput = "11011100") else
				"001000100001" when (binInput = "11011101") else
				"001000100010" when (binInput = "11011110") else
				"001000100011" when (binInput = "11011111") else --223
				
				"001000100100" when (binInput = "11100000") else
				"001000100101" when (binInput = "11100001") else
				"001000100110" when (binInput = "11100010") else
				"001000100111" when (binInput = "11100011") else
				"001000101000" when (binInput = "11100100") else
				"001000101001" when (binInput = "11100101") else
				"001000110000" when (binInput = "11100110") else
				"001000110001" when (binInput = "11100111") else
				"001000110010" when (binInput = "11101000") else
				"001000110011" when (binInput = "11101001") else
				"001000110100" when (binInput = "11101010") else
				"001000110101" when (binInput = "11101011") else
				"001000110110" when (binInput = "11101100") else
				"001000110111" when (binInput = "11101101") else
				"001000111000" when (binInput = "11101110") else
				"001000111001" when (binInput = "11101111") else --239
				
				"001001000000" when (binInput = "11110000") else
				"001001000001" when (binInput = "11110001") else
				"001001000010" when (binInput = "11110010") else
				"001001000011" when (binInput = "11110011") else
				"001001000100" when (binInput = "11110100") else
				"001001000101" when (binInput = "11110101") else
				"001001000110" when (binInput = "11110110") else
				"001001000111" when (binInput = "11110111") else
				"001001001000" when (binInput = "11111000") else
				"001001001001" when (binInput = "11111001") else
				"001001010000" when (binInput = "11111010") else
				"001001010001" when (binInput = "11111011") else
				"001001010010" when (binInput = "11111100") else
				"001001010011" when (binInput = "11111101") else
				"001001010100" when (binInput = "11111110") else
				"001001010101" when (binInput = "11111111") else --255
				
				
				"000000000000";                               --0	
	
end Behavioral;
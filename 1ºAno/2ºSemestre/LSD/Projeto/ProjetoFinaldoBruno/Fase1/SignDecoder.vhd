library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SignDecoder is 

	port(signInput : in  std_logic;
		  decOut_n: out std_logic_vector(6 downto 0));

end SignDecoder;

architecture Behavioral of SignDecoder is
begin 
		decOut_n <= "0111111" when (signInput= '1') else  -- -
						"1000000";                            -- 0						
end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM is
port(	clk 	: in std_logic;
		writeEnable : in std_logic;	
		writeData	: in std_logic_vector(7 downto 0); 		--resultado da ari unit
		address 		: in std_logic_vector(7 downto 0); 		--mesmo counter da rom
		RESET_RAM	: in std_logic;						  	  --reset diferente dos outros
		DataOut 		: out std_logic_vector(7 downto 0));  -- nao sei quantos bits é mas devem ser estes
end RAM;

architecture Behavioral of RAM is

	constant NUM_WORDS : integer := 32;
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TMemory is array (0 to NUM_WORDS-1) of TDataWord;
	signal s_memory : TMemory;

begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (writeEnable = '1') then
				if (RESET_RAM = '1') then
					--nao sei como fazer este reset
				else
					s_memory(to_integer(unsigned(address))) <= writeData;
			end if;
		end if;
	end process;
		DataOut <= s_memory(to_integer(unsigned(address)));
end Behavioral;

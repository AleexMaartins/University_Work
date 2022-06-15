library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity RegisterDecoder is
	port( clk : in std_logic;
			enable : in std_logic;
			reset	 : in std_logic;
			outputs : out std_logic);
end RegisterDecoder;

architecture Behavioral of RegisterDecoder is

begin
	process(enable, reset)
	begin
		if (rising_edge(clk)) then
			if (enable = '0') then
				outputs <= '0';
			else
				if (reset = '1') then
					outputs <= '0';
				else
					outputs <= '1';
				end if;
			end if;
		end if;
	end process;
end Behavioral;
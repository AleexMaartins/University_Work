library ieee;
use ieee.std_logic_1164.all;

entity Timer is
generic(K : positive := 5);
	port( clk : in std_logic;
			start : in std_logic;
			delay : out std_logic);
			
end Timer;

architecture Behavioral of Timer is
	signal s_count : integer := 0;
		begin
			assert(K >= 2);
				process(clk)
					begin
						if (rising_edge(clk)) then
							if (s_count = 0) then
								if (start = '1') then
									s_count <= s_count + 1;
								end if;
								delay <= '0';
							else
								if (s_count = (K - 1)) then
									delay <= '1';
									s_count <= 0;
								else
									delay <= '0';
									s_count <= s_count + 1;
								end if;
							end if;
						end if;
				end process;
end Behavioral;

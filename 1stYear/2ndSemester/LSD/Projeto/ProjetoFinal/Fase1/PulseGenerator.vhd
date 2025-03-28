library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity PulseGenerator is
	generic (MAX : positive := 25_000_000);
	port (
		clk   : in std_logic;
		reset : in std_logic;
		pulseOut : out std_logic);
end PulseGenerator;

architecture Behavioral of PulseGenerator is
	signal s_cnt : natural range 0 to MAX - 1;
begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			pulseOut <= '0';
			if (reset = '1') then
				s_cnt <= 0;
			else
				s_cnt <= s_cnt + 1;
				if (s_cnt = MAX - 1) then
					s_cnt <= 0;
					pulseOut <= '1';
				end if;
			end if;
		end if;
	end process;
end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegister_Demo is

		port( CLOCK_50: in std_logic;
            SW			: in std_logic_vector(0 downto 0);
				LEDR 		: out std_logic_vector(7 downto 0));
            
end ShiftRegister_Demo;

architecture RTL of ShiftRegister_Demo is
signal clk_1Hz: std_logic;
begin

	div: entity work.ClkDivider(Behavioral)
					generic map(divFactor => 50_000_000)
					port map(clkIn => CLOCK_50,
								clkOut =>clk_1Hz);
								
	reg:	entity work.ShiftRegisterN(Behavioral)
					generic map(size => 8)
					port map(sin => SW(0),
								clk => clk_1Hz,
								dataOut => LEDR(7 downto 0));
end RTL;

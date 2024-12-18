library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_Demo is
port (CLOCK_50 : in std_logic;
		KEY		: in  std_logic_vector(2 downto 0);
		--LEDR		: out std_logic_vector(7 downto 0);
		HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0));
		--LEDG     : out std_logic_vector(8 downto 0));
end ROM_Demo;

architecture Shell of ROM_Demo is
	signal s_clock : std_logic;
	signal s_count : std_logic_vector(7 downto 0);
	signal s_number : std_logic_vector(7 downto 0);
	signal s_unit : std_logic_vector(3 downto 0);
	signal s_dec : std_logic_vector(3 downto 0);
	signal s_cent : std_logic_vector(3 downto 0);
	signal s_sign : std_logic;
begin
PulseGenerator :  entity work.PulseGenerator(Behavioral)
								port map(clk => CLOCK_50,
											reset  => '0',
											pulseOut => s_clock);

Counter :  entity work.AddressGenerator(Behavioral)
								port map(clk  => CLOCK_50,
											enable => s_clock,
											reset  => not KEY(2),
											count	=> s_count);

ROM : entity work.TriangSignal_ROM_256x8(Behavioral)
						port map(address => s_count,
									dataOut => s_number);
									
Signed2BCD : entity work.Signed2BCD(Behavioral) --conversao de sinal para BCD
						port map(dataIn => s_number,
									unitsOut => s_unit,
									decsOut => s_dec,
									centsOut => s_cent,
									sign => s_sign);
									--BCDOut => s_convertedNum);
									
d0 : entity work.Bin7SegDecoder(Behavioral) --unidades
						port map(binInput => s_unit,
									decOut_n => HEX0);
									
									
d1 : entity work.Bin7SegDecoder(Behavioral) --dezenas
						port map(binInput => s_dec,
									decOut_n => HEX1);

d2 : entity work.Bin7SegDecoder(Behavioral) --centenas
						port map(binInput => s_cent,
									decOut_n => HEX2);
									
d3: entity work.SignDecoder(Behavioral) --sinal
						port map(signInput => s_sign,
									decOut_n => HEX3);



end Shell;
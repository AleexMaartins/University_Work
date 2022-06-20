library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity Projeto_Demo is
port (CLOCK_50 : in std_logic;
		KEY		: in  std_logic_vector(2 downto 0);
		--LEDR		: out std_logic_vector(7 downto 0);
		HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0 : out std_logic_vector(6 downto 0));
		--LEDG     : out std_logic_vector(8 downto 0));
end Projeto_Demo;

architecture Shell of Projeto_Demo is
	signal s_clock : std_logic;
	signal s_count : std_logic_vector(7 downto 0);
	signal s_number : std_logic_vector(7 downto 0);
	signal s_unit : std_logic_vector(3 downto 0);
	signal s_dec : std_logic_vector(3 downto 0);
	signal s_cent : std_logic_vector(3 downto 0);
	signal s_sign : std_logic;
	
	signal s_unit2 : std_logic_vector(3 downto 0);
	signal s_dec2 : std_logic_vector(3 downto 0);
	signal s_cent2 : std_logic_vector(3 downto 0);
	signal s_sign2 : std_logic;
	
	
   signal s_decoder    : std_logic;
   signal s_delay      : std_logic;
	signal s_dataOut : std_logic_vector(7 downto 0);
	signal s_result     : std_logic_vector(7 downto 0);
	signal s_DataOut2     : std_logic_vector(7 downto 0);
	signal s_DataOut1     : std_logic_vector(7 downto 0);
	signal s_DataOut0     : std_logic_vector(7 downto 0);
	
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
									
Signed2BCD_ROM : entity work.Signed2BCD(Behavioral) --conversao de sinal para BCD
						port map(dataIn => s_number,
									unitsOut => s_unit,
									decsOut => s_dec,
									centsOut => s_cent,
									sign => s_sign);
									
									
d0_ROM : entity work.Bin7SegDecoder(Behavioral) --unidades
						port map(binInput => s_unit,
									decOut_n => HEX0);
									
									
d1_ROM : entity work.Bin7SegDecoder(Behavioral) --dezenas
						port map(binInput => s_dec,
									decOut_n => HEX1);

d2_ROM : entity work.Bin7SegDecoder(Behavioral) --centenas
						port map(binInput => s_cent,
									decOut_n => HEX2);
									
d3_ROM : entity work.SignDecoder(Behavioral) --sinal
						port map(signInput => s_sign,
									decOut_n => HEX3);
									
RegisterBank : entity work.RegisterBank(Behavioral)
                   port map(WrData     => s_count,
                            reset        => not KEY(2),
									 WE            => s_clock,
									 DataOut2     => s_DataOut2,
									 DataOut1     => s_DataOut1, 
									 DataOut0     =>  s_DataOut0);

ArithmeticUnit : entity work.ArithmeticUnit(Behavioral)
                        port map(operand0 => s_DataOut0,
                                            operand1 => s_DataOut1,
                                            operand2 => s_DataOut2,
                                 result    => s_result);
											

Timer: entity work.Timer(Behavioral)
                        port map(clk        => CLOCK_50,
                                            start        => s_clock,
                                            delay        => s_delay);
														  
														  
RAM : entity work.RAM_256x8(Behavioral)
                        port map(clk            => CLOCK_50,
                                 writeEnable => s_delay,
											writeData    => s_result,
											address         => s_count,
											RESET_RAM    => not KEY(1),
											DataOut         => s_dataOut);

Signed2BCD_RAM : entity work.Signed2BCD(Behavioral) --conversao de sinal para BCD
						port map(dataIn => s_dataOut,
									unitsOut => s_unit2,
									decsOut => s_dec2,
									centsOut => s_cent2,
									sign => s_sign2);
									
									
d0_RAM : entity work.Bin7SegDecoder(Behavioral) --unidades
						port map(binInput => s_unit2,
									decOut_n => HEX4);
									
									
d1_RAM : entity work.Bin7SegDecoder(Behavioral) --dezenas
						port map(binInput => s_dec2,
									decOut_n => HEX5);

d2_RAM : entity work.Bin7SegDecoder(Behavioral) --centenas
						port map(binInput => s_cent2,
									decOut_n => HEX6);
									
d3_RAM : entity work.SignDecoder(Behavioral) --sinal
						port map(signInput => s_sign2,
									decOut_n => HEX7);
														  
														  
end Shell;
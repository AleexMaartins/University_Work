library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity Projeto_Demo is
port (  CLOCK_50 : in std_logic;
        KEY        : in  std_logic_vector(0 downto 0);
        LEDR        : out std_logic_vector(7 downto 0);
        LEDG     : out std_logic_vector(8 downto 0));
end Projeto_Demo;

architecture Shell of Projeto_Demo is
    signal s_clock 	: std_logic;
    signal s_count  	: std_logic_vector(7 downto 0);
	 signal s_decoder	: std_logic;
    signal s_delay  	: std_logic;
	 signal s_dataOut : std_logic_vector(7 downto 0);
	 signal s_result 	: std_logic_vector(7 downto 0);
	 signal s_DataOut2 	: std_logic_vector(7 downto 0);
	 signal s_DataOut1 	: std_logic_vector(7 downto 0);
	 signal s_DataOut0 	: std_logic_vector(7 downto 0);

	 begin
PulseGenerator :  entity work.PulseGenerator(Behavioral)
                                port map(	  clk => CLOCK_50,
                                            pulseOut => s_clock);

Counter :  entity work.Address_Generator(Behavioral)
                                port map(	  clk  	=> CLOCK_50,
                                            enable => s_clock,
                                            reset  => not KEY(2),
                                            count  => s_count);

ROM : entity work.TriangSignal_ROM_256x8(Behavioral)
                        port map(	address => s_count,
                                    dataOut => LEDR);

RegisterBank:	entity work.RegisterBank(Behavioral)
						port map(  WrData 	=> s_count,
									  reset		=> not KEY(2),
									  WE			=> s_clock,
									  DataOut2 	=> s_DataOut2,
									  DataOut1 	=> s_DataOut1, 
									  DataOut0 	=>  s_DataOut0);
									  
									  
ArithmeticUnit	:	entity work.ArithmeticUnit(Behavioral)
							port map(	operand0 => s_DataOut0,
											operand1 => s_DataOut1,
											operand2 => s_DataOut2,
											result	=> s_result);


Timer: entity work.Timer(Behavioral)
                        port map(clk		=> CLOCK_50,
											start		=> s_clock,
											delay		=> s_delay);


RAM : entity work.RAM(Behavioral)
                        port map(clk			=> CLOCK_50,
											writeEnable => s_delay,
											writeData	=> s_result,
											address 		=> s_count,
											RESET_RAM	=> not KEY(1),
											DataOut	 	=> s_dataOut);





end Shell;
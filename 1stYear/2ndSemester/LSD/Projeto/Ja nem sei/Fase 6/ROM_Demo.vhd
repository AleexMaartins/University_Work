library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_Demo is
port (  CLOCK_50 : in std_logic;
        KEY        : in  std_logic_vector(0 downto 0);
        LEDR        : out std_logic_vector(7 downto 0);
        LEDG     : out std_logic_vector(8 downto 0));
end ROM_Demo;

architecture Shell of ROM_Demo is
    signal s_clock  : std_logic;
    signal s_count  : std_logic_vector(7 downto 0);
	 signal s_decoder: std_logic;
	 
begin
PulseGenerator :  entity work.PulseGenerator(Behavioral)
                                port map(	  clk => CLOCK_50,
                                            reset  => '0',
                                            pulseOut => s_clock);

Counter :  entity work.Address_Generator(Behavioral)
                                port map(	  clk  	=> CLOCK_50,
                                            enable => s_clock,
                                            reset  => not KEY(0),
                                            count  => s_count);

ROM : entity work.TriangSignal_ROM_256x8(Behavioral)
                        port map(	address => s_count,
                                    dataOut => LEDR);

--RegisterDecoder:  entity work.RegisterDecoder(Behavioral)
--	                              port map(clk  => CLOCK_50,
--														enable => s_clock,
--														reset  => not KEY(0),
--														outputs =>s_decoder);






end Shell;
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity RegisterBank is
port( WE            : in std_logic;
        reset     : in std_logic;
        WrData     : in std_logic_vector(7 downto 0);
        dataOut0    : out std_logic_vector(7 downto 0);
        dataOut1    : out std_logic_vector(7 downto 0);
        dataOut2    : out std_logic_vector(7 downto 0));

end RegisterBank;
architecture Behavioral of RegisterBank is
signal s_0 : std_logic_vector(7 downto 0);
signal s_1: std_logic_vector(7 downto 0);
signal s_2: std_logic_vector(7 downto 0);
begin
    process(WrData,reset,WE)
        begin
            if (WE = '1') then
                if (reset = '1') then
                    s_2 <= "00000000";
                    s_1 <= "00000000";
                    s_0 <= "00000000";
                else
                    s_2 <= s_1 ;
                    s_1 <= s_0;
                    s_0 <= WrData;
                end if;
            end if;
    end process;
    dataOut0 <= s_0;
    dataOut1 <= s_1;
    dataOut2 <= s_2;
end Behavioral;
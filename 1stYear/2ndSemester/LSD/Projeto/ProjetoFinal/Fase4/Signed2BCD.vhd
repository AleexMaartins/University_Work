library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Signed2BCD is
    port(dataIn : in  std_logic_vector(7 downto 0);
         unitsOut : out std_logic_vector(3 downto 0);
         decsOut : out std_logic_vector(3 downto 0);
         centsOut : out std_logic_vector(3 downto 0);
         sign  : out std_logic);
end Signed2BCD;

architecture Behavioral of Signed2BCD is
    signal data : unsigned(7 downto 0); 
begin  
    
        data <= unsigned(not dataIn) + 1 when (dataIn(7) = '1') else unsigned(dataIn); --complemento para 2 (ver o sinal)
        
        sign <= '1' when (dataIn(7) = '1') else '0';
        
        unitsOut <= std_logic_vector((data rem 100) rem 10)(3 downto 0); --obter as unidades
        decsOut <= std_logic_vector((data rem 100) / 10)(3 downto 0); --obter as dezenas
        centsOut <= std_logic_vector(data / 100)(3 downto 0); --obter as centenas
        
end Behavioral;
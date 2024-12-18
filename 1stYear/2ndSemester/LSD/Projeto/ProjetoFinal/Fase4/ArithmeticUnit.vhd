library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ArithmeticUnit is
    port(    operand0 : in std_logic_vector(7 downto 0);
            operand1 : in std_logic_vector(7 downto 0);
            operand2 : in std_logic_vector(7 downto 0);
            result : out std_logic_vector(7 downto 0));
end ArithmeticUnit;

architecture Behavioral of ArithmeticUnit is
    signal s_operand0, s_operand1, s_operand2, s_result : unsigned(7 downto 0);
    begin
        s_operand0 <= unsigned(operand0);
        
        s_operand1 <= unsigned(operand1);
        
        s_operand2 <= unsigned(operand2);
        
        s_result <= s_operand2 - s_operand1 - s_operand1 + s_operand0;
        
        result <= std_logic_vector(s_result(7 downto 0));

end Behavioral;
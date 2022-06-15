library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity RegisterBank is
    generic(
        N:      natural := 16;  -- word width in bits
        M:      natural := 4    --  Address bits, number of words = 2**M 
    );

    port ( 
        clk:        in   std_logic;
        Din:        in   std_logic_vector (N-1 downto 0);
        RdAddrA:    in   std_logic_vector (M-1 downto 0);
        RdAddrB:    in   std_logi_c_vector (M-1 downto 0);
        WrAddr:     in   std_logic_vector (M-1 downto 0);
        RdEnabA:    in   std_logic;
        RdEnabB:    in   std_logic;
        WrEnab:     in   std_logic;
        DoutA:      out  std_logic_vector (N-1 downto 0);
        DoutB:      out  std_logic_vector (N-1 downto 0)
    ); end entity;

architecture behave of RegisterBank is

    type RegisterBank_array is array (natural range 0 to 2**M-1) of std_logic_vector ( N-1 downto 0);
    signal RegisterBank: RegisterBank_array;
     
	 begin
    RFILE:
    process(clk) begin
        if rising_edge(clk) then
            if WrEnab = '1' then
                RegisterBank(to_integer(unsigned(WrAddr))) <= Din;
            end if;
            if RdEnabA = '1' then
                DoutA <= RegisterBank(to_integer(unsigned(RdAddrA)));
            else
                DoutA <= (others => 'Z');
            end if;
            if RdEnabB = '1' then
                DoutB <= RegisterBank(to_integer(unsigned(RdAddrB)));
            else
                DoutB <= (others => 'Z');
            end if;
        end if;
    end process;

end architecture;
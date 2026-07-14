library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;


entity FULL_ADDER is
   port (a, b, c: in std_logic;
         SUM, CARRY: out std_logic);
end entity FULL_ADDER;

architecture Equations of FULL_ADDER is
signal s1, c1, c2 : std_logic;
begin

g1: XOR_2 port map(a, b, s1);
g2: XOR_2 port map(s1, c, SUM);
g3: AND_2 port map(a, b, c1);
g4: AND_2 port map(s1, c, c2);
g5: OR_2 port map(c1, c2, CARRY);
end Equations;


library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;


entity no_4_bit_adder_subtractor is
port( a, b : in std_logic_vector(3 downto 0);M : in std_logic;
    SUM : out std_logic_vector(3 downto 0);CARRY : out std_logic);
end no_4_bit_adder_subtractor;



Architecture struct of no_4_bit_adder_subtractor is

component FULL_ADDER is
port(
    a, b, c : in std_logic;
    SUM, CARRY : out std_logic
);
end component;

signal X0, X1, X2, X3 : std_logic;
signal C1, C2, C3, C4 : std_logic;
Begin
 
g1: XOR_2 port map(b(0), M, X0);
g2: XOR_2 port map(b(1), M, X1);
g3: XOR_2 port map(b(2), M, X2);
g4: XOR_2 port map(b(3), M, X3);

FA1: FULL_ADDER port map(a(0), X0, M,  SUM(0), C1);
FA2: FULL_ADDER port map(a(1), X1, C1, SUM(1), C2);
FA3: FULL_ADDER port map(a(2), X2, C2, SUM(2), C3);
FA4: FULL_ADDER port map(a(3), X3, C3, SUM(3), C4);

CARRY <= C4;
end struct;
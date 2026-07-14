library ieee;
use ieee.std_logic_1164.all;

entity DUT is
port(
   input_vector  : in  std_logic_vector(8 downto 0);
   output_vector : out std_logic_vector(4 downto 0)
);
end entity DUT;

architecture DutWrap of DUT is

component no_4_bit_adder_subtractor is
port(
   a, b : in std_logic_vector(3 downto 0);
   M : in std_logic;
   SUM : out std_logic_vector(3 downto 0);
   CARRY : out std_logic);
end component;

begin

add_instance : no_4_bit_adder_subtractor
port map(
   a => input_vector(8 downto 5),b => input_vector(4 downto 1),M => input_vector(0),
   SUM => output_vector(3 downto 0), CARRY => output_vector(4));

end DutWrap;
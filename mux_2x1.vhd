library ieee;
use ieee.std_logic_1164.all;

entity mux_2x1 is
   port (A, B, S: in  std_logic;
			saida: out std_logic);
end mux_2x1;

architecture logica of mux_2x1 is

begin

	saida <= (not(S) and A) or (S and B);

end logica;
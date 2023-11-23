library ieee;
use ieee.std_logic_1164.all;

entity mux_4x1 is
   port (A, B, C, D: in  std_logic;
			S: in std_logic_vector(1 downto 0);
			saida: out std_logic);
end mux_4x1;

architecture logica of mux_4x1 is

	component mux_2x1 is
		port (A, B, S: in  std_logic;
				saida: out std_logic);
	end component;
	signal saida_0, saida_1: std_logic;
	
begin

	MUX2: mux_2x1 port map(A, B, S(0), saida_0);
	MUX1: mux_2x1 port map(C, D, S(0), saida_1);
	MUX0: mux_2x1 port map(saida_0, saida_1, S(1), saida);

end logica;
library ieee;
use ieee.std_logic_1164.all;

entity mux_8x1 is
   port (A, B, C, D, E, F, G, H: in std_logic;
			S: in std_logic_vector(2 downto 0);
			saida: out std_logic);
end mux_8x1;

architecture logica of mux_8x1 is

	component mux_4x1 is
		port (A, B, C, D: in  std_logic;
				S: in std_logic_vector(1 downto 0);
				saida: out std_logic);
	end component;
	
	component mux_2x1 is
		port (A, B, S: in  std_logic;
				saida: out std_logic);
	end component;
	
	signal saida_0, saida_1: std_logic;
	
begin

	MUX2: mux_4x1 port map(A, B, C, D, S(1) & S(0), saida_1);
	MUX1: mux_4x1 port map(E, F, G, H, S(1) & S(0), saida_0);
	MUX0: mux_2x1 port map(saida_1, saida_0, S(2), saida);

end logica;
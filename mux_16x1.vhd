library ieee;
use ieee.std_logic_1164.all;

entity mux_16x1 is
   port (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P: in std_logic;
			S: in std_logic_vector(3 downto 0);
			saida: out std_logic);
end mux_16x1;

architecture logica of mux_16x1 is


	component mux_4x1 is
		port (A, B, C, D: in  std_logic;
				S: in std_logic_vector(1 downto 0);
				saida: out std_logic);
	end component;
	
	
	signal saida_0, saida_1, saida_2, saida_3: std_logic;
	
begin

	MUX4: mux_4x1 port map(A, B, C, D, S(1) & S(0), saida_0);
	MUX3: mux_4x1 port map(E, F, G, H, S(1) & S(0), saida_1);
	MUX2: mux_4x1 port map(I, J, K, L, S(1) & S(0), saida_2);
	MUX1: mux_4x1 port map(M, N, O, P, S(1) & S(0), saida_3);
	MUX0: mux_4x1 port map(saida_0, saida_1, saida_2, saida_3, S(3) & S(2), saida);

end logica;
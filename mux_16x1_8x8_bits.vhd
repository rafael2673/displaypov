library ieee;
use ieee.std_logic_1164.all;
use work.TypesPackage.all;

entity mux_16x1_8x8_bits is
   port (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P: in matrix_type;
			S: in std_logic_vector(3 downto 0);
			saida: out matrix_type);
end mux_16x1_8x8_bits;

architecture logica of mux_16x1_8x8_bits is


component mux_16x1_8_bits is
   port (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P: in std_logic_vector(7 downto 0);
			S: in std_logic_vector(3 downto 0);
			saida: out std_logic_vector(7 downto 0));
end component;
	
	
	signal saida_0, saida_1, saida_2, saida_3, saida_4, saida_5, saida_6, saida_7: std_logic_vector(7 downto 0);
	
begin
	M0: mux_16x1_8_bits port map(A(0), B(0), C(0), D(0), E(0), F(0), G(0), H(0), I(0), 
								 J(0), K(0), L(0), M(0), N(0), O(0), P(0), S, saida_0);
								 
	M1: mux_16x1_8_bits port map(A(1), B(1), C(1), D(1), E(1), F(1), G(1), H(1), I(1), 
								 J(1), K(1), L(1), M(1), N(1), O(1), P(1), S, saida_1);
								 
	M2: mux_16x1_8_bits port map(A(2), B(2), C(2), D(2), E(2), F(2), G(2), H(2), I(2), 
								 J(2), K(2), L(2), M(2), N(2), O(2), P(2), S, saida_2);
								 
	M3: mux_16x1_8_bits port map(A(3), B(3), C(3), D(3), E(3), F(3), G(3), H(3), I(3), 
								 J(3), K(3), L(3), M(3), N(3), O(3), P(3), S, saida_3);

	M4: mux_16x1_8_bits port map(A(4), B(4), C(4), D(4), E(4), F(4), G(4), H(4), I(4), 
								 J(4), K(4), L(4), M(4), N(4), O(4), P(4), S, saida_4);

	M5: mux_16x1_8_bits port map(A(5), B(5), C(5), D(5), E(5), F(5), G(5), H(5), I(5), 
								 J(5), K(5), L(5), M(5), N(5), O(5), P(5), S, saida_5);

	M6: mux_16x1_8_bits port map(A(6), B(6), C(6), D(6), E(6), F(6), G(6), H(6), I(6), 
								 J(6), K(6), L(6), M(6), N(6), O(6), P(6), S, saida_6);

	M7: mux_16x1_8_bits port map(A(7), B(7), C(7), D(7), E(7), F(7), G(7), H(7), I(7), 
								 J(7), K(7), L(7), M(7), N(7), O(7), P(7), S, saida_7);
								 
	saida(7) <= saida_7;
	saida(6) <= saida_6;
	saida(5) <= saida_5;
	saida(4) <= saida_4;
	saida(3) <= saida_3;
	saida(2) <= saida_2;
	saida(1) <= saida_1;
	saida(0) <= saida_0;
								 

end logica;
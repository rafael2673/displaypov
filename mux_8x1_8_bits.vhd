library ieee;
use ieee.std_logic_1164.all;

entity mux_8x1_8_bits is
   port (A, B, C, D, E, F, G, H: in std_logic_vector(7 downto 0);
			S: in std_logic_vector(2 downto 0);
			saida: out std_logic_vector(7 downto 0));
end mux_8x1_8_bits;

architecture logica of mux_8x1_8_bits is

	component mux_8x1 is
		port (A, B, C, D, E, F, G, H: in std_logic;
				S: in std_logic_vector(2 downto 0);
				saida: out std_logic);
	end component;
	
	signal saida_0, saida_1, saida_2, saida_3, saida_4, saida_5, saida_6, saida_7: std_logic;
	
begin

	MUX7: mux_8x1 port map(A(7), B(7), C(7), D(7),
								  E(7), F(7), G(7), H(7), 
								  S, saida_7);
								  
	MUX6: mux_8x1 port map(A(6), B(6), C(6), D(6),
								  E(6), F(6), G(6), H(6), 
								  S, saida_6);
								  
	MUX5: mux_8x1 port map(A(5), B(5), C(5), D(5),
								  E(5), F(5), G(5), H(5), 
								  S, saida_5);
								  
	MUX4: mux_8x1 port map(A(4), B(4), C(4), D(4),
								  E(4), F(4), G(4), H(4), 
								  S, saida_4);

	MUX3: mux_8x1 port map(A(3), B(3), C(3), D(3),
								  E(3), F(3), G(3), H(3), 
								  S, saida_3);
							
	MUX2: mux_8x1 port map(A(2), B(2), C(2), D(2),
								  E(2), F(2), G(2), H(2), 
								  S, saida_2);
							
	MUX1: mux_8x1 port map(A(1), B(1), C(1), D(1),
								  E(1), F(1), G(1), H(1), 
								  S, saida_1);

	MUX0: mux_8x1 port map(A(0), B(0), C(0), D(0),
								  E(0), F(0), G(0), H(0), 
								  S, saida_0);
								  
	saida <= saida_7 & saida_6 & saida_5 & saida_4 & saida_3 & saida_2 & saida_1 & saida_0;

end logica;
library ieee;
use ieee.std_logic_1164.all;

entity pov is
   port (SW: in  std_logic_vector(3 downto 0);
			KEY: in std_logic_vector(2 downto 0);
         LEDR, LEDG: out std_logic_vector(0 to 7);
			pattern0, pattern1, pattern2, 
			pattern3, pattern4, pattern5, 
			pattern6, pattern7: out std_logic_vector(0 to 7);
			pattern_bit: out std_logic
			);
end pov;

architecture logica of pov is

component mux_8x1_8_bits is
   port (S: in std_logic_vector(2 downto 0);
			saida: out std_logic_vector(0 to 7));
end component;

component mux_16x1_8x8_bits is
   port (S: in std_logic_vector(3 downto 0);
			pattern0, pattern1, pattern2, pattern3, pattern4, pattern5, pattern6, pattern7: out std_logic_vector(0 to 7));
end component;

component mux_8x1_int is
   port (KEY: in std_logic_vector(2 downto 0);
			saida: out integer);
end component;


signal saida_mux_8: integer;
signal pattern0_teste, pattern1_teste, pattern2_teste, 
			pattern3_teste, pattern4_teste, pattern5_teste, 
			pattern6_teste, pattern7_teste: std_logic_vector(0 to 7);

begin
	M0: mux_16x1_8x8_bits port map(SW, pattern0_teste, pattern1_teste, pattern2_teste, 
												pattern3_teste, pattern4_teste, pattern5_teste, 
												pattern6_teste, pattern7_teste);
	
	M1: mux_8x1_8_bits port map(KEY, LEDG);
										 
	M2: mux_8x1_int port map (KEY, saida_mux_8);

	LEDR <= pattern0_teste(saida_mux_8) & pattern1_teste(saida_mux_8) & pattern2_teste(saida_mux_8) & pattern3_teste(saida_mux_8) &
           pattern4_teste(saida_mux_8) & pattern5_teste(saida_mux_8) & pattern6_teste(saida_mux_8) & pattern7_teste(saida_mux_8);
	
	pattern0 <= pattern0_teste;
	pattern1 <= pattern1_teste;
	pattern2 <= pattern2_teste;
	pattern3 <= pattern3_teste;
	pattern4 <= pattern4_teste;
	pattern5 <= pattern5_teste;
	pattern6 <= pattern6_teste;
	pattern7 <= pattern7_teste;
	pattern_bit <= pattern2_teste(4);
end logica;
library ieee;
use ieee.std_logic_1164.all;
use work.TypesPackage.all;

entity mux_16x1_8x8_bits is
   port (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P: in matrix_type;
			S: in std_logic_vector(3 downto 0);
			saida: out matrix_type);
end mux_16x1_8x8_bits;

architecture logica of mux_16x1_8x8_bits is
	
begin
	process (S, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P)
		begin
			case S is
				when "0000" => saida <= A;
				when "0001" => saida <= B;
				when "0010" => saida <= C;
				when "0011" => saida <= D;
				when "0100" => saida <= E;
				when "0101" => saida <= F;
				when "0110" => saida <= G;
				when "0111" => saida <= H;
				when "1000" => saida <= I;
				when "1001" => saida <= J;
				when "1010" => saida <= K;
				when "1011" => saida <= L;
				when "1100" => saida <= M;
				when "1101" => saida <= N;
				when "1110" => saida <= O;
				when "1111" => saida <= P;
			end case;
	end process;

end logica;
library ieee;
use ieee.std_logic_1164.all;

entity mux_8x1_int is
   port (KEY: in std_logic_vector(2 downto 0);
			saida: out integer);
end mux_8x1_int;

architecture logica of mux_8x1_int is

	
begin
	process (KEY)
		begin
			case KEY is
				when "000" => saida <= 0;
				when "001" => saida <= 1;
				when "010" => saida <= 2;
				when "011" => saida <= 3;
				when "100" => saida <= 4;
				when "101" => saida <= 5;
				when "110" => saida <= 6;
				when "111" => saida <= 7;
			end case;
	end process;
end logica;
library ieee;
use ieee.std_logic_1164.all;
use work.TypesPackage.all;

entity mux_16x1_8x8_bits is
   port (S: in std_logic_vector(3 downto 0);
			pattern0, pattern1, pattern2, pattern3, pattern4, pattern5, pattern6, pattern7: out std_logic_vector(7 downto 0));
end mux_16x1_8x8_bits;

architecture logica of mux_16x1_8x8_bits is
constant zero_pattern0: std_logic_vector:="00000000";
constant zero_pattern1: std_logic_vector:="00011100";
constant zero_pattern2: std_logic_vector:="00100010";
constant zero_pattern3: std_logic_vector:="00100110";
constant zero_pattern4: std_logic_vector:="00101010";
constant zero_pattern5: std_logic_vector:="00110010";
constant zero_pattern6: std_logic_vector:="00100010";
constant zero_pattern7: std_logic_vector:="00011100";



constant one_pattern0: std_logic_vector:="00000000";
constant one_pattern1: std_logic_vector:="00001000";
constant one_pattern2: std_logic_vector:="00011000";
constant one_pattern3: std_logic_vector:="00001000";
constant one_pattern4: std_logic_vector:="00001000";
constant one_pattern5: std_logic_vector:="00001000";
constant one_pattern6: std_logic_vector:="00001000";
constant one_pattern7: std_logic_vector:="00011100";



constant two_pattern0: std_logic_vector:="00000000";
constant two_pattern1: std_logic_vector:="00011100";
constant two_pattern2: std_logic_vector:="00100010";
constant two_pattern3: std_logic_vector:="00000010";
constant two_pattern4: std_logic_vector:="00001100";
constant two_pattern5: std_logic_vector:="00010000";
constant two_pattern6: std_logic_vector:="00100000";
constant two_pattern7: std_logic_vector:="00111110";


constant three_pattern0: std_logic_vector:="00000000";
constant three_pattern1: std_logic_vector:="00011100";
constant three_pattern2: std_logic_vector:="00100010";
constant three_pattern3: std_logic_vector:="00000010";
constant three_pattern4: std_logic_vector:="00011100";
constant three_pattern5: std_logic_vector:="00000010";
constant three_pattern6: std_logic_vector:="00100010";
constant three_pattern7: std_logic_vector:="00011100";


constant four_pattern0: std_logic_vector:="00000000";
constant four_pattern1: std_logic_vector:="00000100";
constant four_pattern2: std_logic_vector:="00001100";
constant four_pattern3: std_logic_vector:="00010100";
constant four_pattern4: std_logic_vector:="00100100";
constant four_pattern5: std_logic_vector:="00111110";
constant four_pattern6: std_logic_vector:="00000100";
constant four_pattern7: std_logic_vector:="00000100";


constant five_pattern0: std_logic_vector:="00000000";
constant five_pattern1: std_logic_vector:="00111110";
constant five_pattern2: std_logic_vector:="00100000";
constant five_pattern3: std_logic_vector:="00111100";
constant five_pattern4: std_logic_vector:="00000010";
constant five_pattern5: std_logic_vector:="00000010";
constant five_pattern6: std_logic_vector:="00100010";
constant five_pattern7: std_logic_vector:="00011100";


constant six_pattern0: std_logic_vector:="00000000";
constant six_pattern1: std_logic_vector:="00001100";
constant six_pattern2: std_logic_vector:="00010000";
constant six_pattern3: std_logic_vector:="00100000";
constant six_pattern4: std_logic_vector:="00111100";
constant six_pattern5: std_logic_vector:="00100010";
constant six_pattern6: std_logic_vector:="00100010";
constant six_pattern7: std_logic_vector:="00011100";


constant seven_pattern0: std_logic_vector:="00000000";
constant seven_pattern1: std_logic_vector:="00111110";
constant seven_pattern2: std_logic_vector:="00000010";
constant seven_pattern3: std_logic_vector:="00000100";
constant seven_pattern4: std_logic_vector:="00001000";
constant seven_pattern5: std_logic_vector:="00010000";
constant seven_pattern6: std_logic_vector:="00010000";
constant seven_pattern7: std_logic_vector:="00010000";


constant eight_pattern0: std_logic_vector:="00000000";
constant eight_pattern1: std_logic_vector:="00011100";
constant eight_pattern2: std_logic_vector:="00100010";
constant eight_pattern3: std_logic_vector:="00100010";
constant eight_pattern4: std_logic_vector:="00011100";
constant eight_pattern5: std_logic_vector:="00100010";
constant eight_pattern6: std_logic_vector:="00100010";
constant eight_pattern7: std_logic_vector:="00011100";


constant nine_pattern0: std_logic_vector:="00000000";
constant nine_pattern1: std_logic_vector:="00011100";
constant nine_pattern2: std_logic_vector:="00100010";
constant nine_pattern3: std_logic_vector:="00100010";
constant nine_pattern4: std_logic_vector:="00011110";
constant nine_pattern5: std_logic_vector:="00000010";
constant nine_pattern6: std_logic_vector:="00000100";
constant nine_pattern7: std_logic_vector:="00011000";


constant ten_pattern0: std_logic_vector:="00000000";
constant ten_pattern1: std_logic_vector:="00000000";
constant ten_pattern2: std_logic_vector:="00000000";
constant ten_pattern3: std_logic_vector:="00011000";
constant ten_pattern4: std_logic_vector:="00000100";
constant ten_pattern5: std_logic_vector:="00011100";
constant ten_pattern6: std_logic_vector:="00100100";
constant ten_pattern7: std_logic_vector:="00011110";


constant eleven_pattern0: std_logic_vector:="00000000";
constant eleven_pattern1: std_logic_vector:="00100000";
constant eleven_pattern2: std_logic_vector:="00100000";
constant eleven_pattern3: std_logic_vector:="00101100";
constant eleven_pattern4: std_logic_vector:="00110010";
constant eleven_pattern5: std_logic_vector:="00100010";
constant eleven_pattern6: std_logic_vector:="00100010";
constant eleven_pattern7: std_logic_vector:="00111100";


constant twelve_pattern0: std_logic_vector:="00000000";
constant twelve_pattern1: std_logic_vector:="00000000";
constant twelve_pattern2: std_logic_vector:="00000000";
constant twelve_pattern3: std_logic_vector:="00011100";
constant twelve_pattern4: std_logic_vector:="00100000";
constant twelve_pattern5: std_logic_vector:="00100000";
constant twelve_pattern6: std_logic_vector:="00100010";
constant twelve_pattern7: std_logic_vector:="00011100";


constant thirteen_pattern0: std_logic_vector:="00000000";
constant thirteen_pattern1: std_logic_vector:="00000010";
constant thirteen_pattern2: std_logic_vector:="00000010";
constant thirteen_pattern3: std_logic_vector:="00011010";
constant thirteen_pattern4: std_logic_vector:="00100110";
constant thirteen_pattern5: std_logic_vector:="00100010";
constant thirteen_pattern6: std_logic_vector:="00100010";
constant thirteen_pattern7: std_logic_vector:="00011110";


constant fourteen_pattern0: std_logic_vector:="00000000";
constant fourteen_pattern1: std_logic_vector:="00000000";
constant fourteen_pattern2: std_logic_vector:="00000000";
constant fourteen_pattern3: std_logic_vector:="00011100";
constant fourteen_pattern4: std_logic_vector:="00100010";
constant fourteen_pattern5: std_logic_vector:="00111100";
constant fourteen_pattern6: std_logic_vector:="00100000";
constant fourteen_pattern7: std_logic_vector:="00011100";


constant fiveteen_pattern0: std_logic_vector:="00000000";
constant fiveteen_pattern1: std_logic_vector:="00000100";
constant fiveteen_pattern2: std_logic_vector:="00001010";
constant fiveteen_pattern3: std_logic_vector:="00001000";
constant fiveteen_pattern4: std_logic_vector:="00011100";
constant fiveteen_pattern5: std_logic_vector:="00001000";
constant fiveteen_pattern6: std_logic_vector:="00001000";
constant fiveteen_pattern7: std_logic_vector:="00001000";

begin
	process (S)
		begin
			case S is
			when "0000" => 
				pattern0 <= zero_pattern0;
				pattern1 <= zero_pattern1;
				pattern2 <= zero_pattern2;
				pattern3 <= zero_pattern3;
				pattern4 <= zero_pattern4;
				pattern5 <= zero_pattern5;
				pattern6 <= zero_pattern6;
				pattern7 <= zero_pattern7;
			when "0001" => 
				pattern0 <= one_pattern0;
				pattern1 <= one_pattern1;
				pattern2 <= one_pattern2;
				pattern3 <= one_pattern3;
				pattern4 <= one_pattern4;
				pattern5 <= one_pattern5;
				pattern6 <= one_pattern6;
				pattern7 <= one_pattern7;
			-- Adicione mais casos para os outros valores de S
				when "0010" =>
				pattern0 <= two_pattern0;
				pattern1 <= two_pattern1;
				pattern2 <= two_pattern2;
				pattern3 <= two_pattern3;
				pattern4 <= two_pattern4;
				pattern5 <= two_pattern5;
				pattern6 <= two_pattern6;
				pattern7 <= two_pattern7;
				when "0011" => 
				pattern0 <= three_pattern0;
				pattern1 <= three_pattern1;
				pattern2 <= three_pattern2;
				pattern3 <= three_pattern3;
				pattern4 <= three_pattern4;
				pattern5 <= three_pattern5;
				pattern6 <= three_pattern6;
				pattern7 <= three_pattern7;
				when "0100" => 
				pattern0 <= four_pattern0;
				pattern1 <= four_pattern1;
				pattern2 <= four_pattern2;
				pattern3 <= four_pattern3;
				pattern4 <= four_pattern4;
				pattern5 <= four_pattern5;
				pattern6 <= four_pattern6;
				pattern7 <= four_pattern7;
				when "0101" =>
				pattern0 <= five_pattern0;
				pattern1 <= five_pattern1;
				pattern2 <= five_pattern2;
				pattern3 <= five_pattern3;
				pattern4 <= five_pattern4;
				pattern5 <= five_pattern5;
				pattern6 <= five_pattern6;
				pattern7 <= five_pattern7;
				when "0110" => 
				pattern0 <= six_pattern0;
				pattern1 <= six_pattern1;
				pattern2 <= six_pattern2;
				pattern3 <= six_pattern3;
				pattern4 <= six_pattern4;
				pattern5 <= six_pattern5;
				pattern6 <= six_pattern6;
				pattern7 <= six_pattern7;
				when "0111" => 
				pattern0 <= seven_pattern0;
				pattern1 <= seven_pattern1;
				pattern2 <= seven_pattern2;
				pattern3 <= seven_pattern3;
				pattern4 <= seven_pattern4;
				pattern5 <= seven_pattern5;
				pattern6 <= seven_pattern6;
				pattern7 <= seven_pattern7;
				when "1000" => 
				pattern0 <= eight_pattern0;
				pattern1 <= eight_pattern1;
				pattern2 <= eight_pattern2;
				pattern3 <= eight_pattern3;
				pattern4 <= eight_pattern4;
				pattern5 <= eight_pattern5;
				pattern6 <= eight_pattern6;
				pattern7 <= eight_pattern7;
				when "1001" => 
				pattern0 <= nine_pattern0;
				pattern1 <= nine_pattern1;
				pattern2 <= nine_pattern2;
				pattern3 <= nine_pattern3;
				pattern4 <= nine_pattern4;
				pattern5 <= nine_pattern5;
				pattern6 <= nine_pattern6;
				pattern7 <= nine_pattern7;
				when "1010" => 
				pattern0 <= ten_pattern0;
				pattern1 <= ten_pattern1;
				pattern2 <= ten_pattern2;
				pattern3 <= ten_pattern3;
				pattern4 <= ten_pattern4;
				pattern5 <= ten_pattern5;
				pattern6 <= ten_pattern6;
				pattern7 <= ten_pattern7;
				when "1011" => 
				pattern0 <= eleven_pattern0;
				pattern1 <= eleven_pattern1;
				pattern2 <= eleven_pattern2;
				pattern3 <= eleven_pattern3;
				pattern4 <= eleven_pattern4;
				pattern5 <= eleven_pattern5;
				pattern6 <= eleven_pattern6;
				pattern7 <= eleven_pattern7;
				when "1100" => 
				pattern0 <= twelve_pattern0;
				pattern1 <= twelve_pattern1;
				pattern2 <= twelve_pattern2;
				pattern3 <= twelve_pattern3;
				pattern4 <= twelve_pattern4;
				pattern5 <= twelve_pattern5;
				pattern6 <= twelve_pattern6;
				pattern7 <= twelve_pattern7;
				when "1101" => 
				pattern0 <= thirteen_pattern0;
				pattern1 <= thirteen_pattern1;
				pattern2 <= thirteen_pattern2;
				pattern3 <= thirteen_pattern3;
				pattern4 <= thirteen_pattern4;
				pattern5 <= thirteen_pattern5;
				pattern6 <= thirteen_pattern6;
				pattern7 <= thirteen_pattern7;
				when "1110" => 
				pattern0 <= fourteen_pattern0;
				pattern1 <= fourteen_pattern1;
				pattern2 <= fourteen_pattern2;
				pattern3 <= fourteen_pattern3;
				pattern4 <= fourteen_pattern4;
				pattern5 <= fourteen_pattern5;
				pattern6 <= fourteen_pattern6;
				pattern7 <= fourteen_pattern7;
				when "1111" => 
				pattern0 <= fiveteen_pattern0;
				pattern1 <= fiveteen_pattern1;
				pattern2 <= fiveteen_pattern2;
				pattern3 <= fiveteen_pattern3;
				pattern4 <= fiveteen_pattern4;
				pattern5 <= fiveteen_pattern5;
				pattern6 <= fiveteen_pattern6;
				pattern7 <= fiveteen_pattern7;
				when others =>
				pattern0 <= (others => '0');
				pattern1 <= (others => '0');
				pattern2 <= (others => '0');
				pattern3 <= (others => '0');
				pattern4 <= (others => '0');
				pattern5 <= (others => '0');
				pattern6 <= (others => '0');
				pattern7 <= (others => '0');
			end case;
	end process;

end logica;
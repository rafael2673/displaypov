library ieee;
use ieee.std_logic_1164.all;

package TypesPackage is
    subtype row_type is std_logic_vector(7 downto 0);
    type matrix_type is array (0 to 7) of row_type;
end package TypesPackage;

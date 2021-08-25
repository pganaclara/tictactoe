library IEEE;
use IEEE.std_logic_1164.all;

package TTTdefs is
-- Como VHDL suporta array podemos criar um com 2 dimensões com todos possíveis lugares
  type Square is (EMPTY, X, Y);
  type Grid is array (1 to 9) of Square;
end TTTdefs;

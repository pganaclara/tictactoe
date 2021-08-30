library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.TTTdefs.all;

entity PICK is 
port (
			PLAYER: in Square;
         BOARD: in Grid;
			WINMV, BLKMV: in natural;
         MOVE: out natural
);
end PICK;

architecture PICK_arch of PICK is
	function empty_square(BO: Grid; i: INTEGER) return BOOLEAN is
	begin 
		return BO(i)=EMPTY;
	end empty_square;
begin
	process (PLAYER, BOARD, WINMV, BLKMV)
	begin	
		if WINMV /= 0 then MOVE <= WINMV;
		elsif BLKMV /= 0 then MOVE <= BLKMV;
		elsif empty_square(5) then MOVE <= 5;  
		elsif empty_square(1) then MOVE <= 1; 
		elsif empty_square(3) then MOVE <= 3;
		elsif empty_square(7) then MOVE <= 7;  
		elsif empty_square(9) then MOVE <= 9;
		elsif empty_square(2) then MOVE <= 2;  
		elsif empty_square(4) then MOVE <= 4;
		elsif empty_square(6) then MOVE <= 6; 
		elsif empty_square(8) then MOVE <= 8; 
		else 				  				MOVE <= 0;
		end if;
end process;
end PICK_arch;

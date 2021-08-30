library IEEE;
use ieee.std_logic_1164.all;
use work.TTTdefs.all;

entity GETMOVE is
  port ( PLAYER: in Square;
         BOARD: in Grid;
         MOVE: out natural );
end GETMOVE;

architecture GETMOVE_arch of GETMOVE is

component TwoInRow port ( 
			PLAYER: in Square;
         BOARD: in Grid;
         MOVE: out natural );
end component;

component PICK port (
			PLAYER: in Square;
         BOARD: in Grid;
			WINMV, BLKMV: in natural;
         MOVE: out natural
);
end component;

signal WIN, BLK: natural;

begin
	U1: TwoInRow port map (PLAYER, BOARD, WIN);
	U2: TwoInRow port map (PLAYER, BOARD, BLK);
	U3: PICK port map (PLAYER, BOARD, WIN, BLK, MOVE);
end GETMOVE_arch;
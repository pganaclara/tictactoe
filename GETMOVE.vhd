library IEEE;
use ieee.std_logic_1164.all;
use work.TTTdefs.all;

entity GETMOVE is
  port ( PLAYER: in Square;
         BOARD: in Grid;
         MOVE: out natural );
end GETMOVE;

architecture GETMOVE_arch of GETMOVE is

component TwoInARow port ( 
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
signal PCMOVE: natural;

begin
	U1: TwoInARow port map (PLAYER => X, BOARD => board, MOVE => WIN);
	U2: TwoInARow port map (PLAYER => Y, BOARD => board, MOVE => BLK);
	U3: PICK port map (PLAYER => X, BOARD => board, WINMV => WIN, BLKMV => BLK, MOVE => PCMOVE);
	
	MOVE <= PCMOVE;
end GETMOVE_arch;
library IEEE;
use IEEE.std_logic_1164.all;
use work.TTTdefs.all;

entity TwoInARow is
  port ( PLAYER: in Square;
         BOARD: in Grid;
         MOVE: out natural );
end TwoInARow;

architecture TwoInARow_arch of TwoInARow is

  -- Achar o quadrado vazio na linha
  function L(P: Square; B: Grid) return natural is
  begin
    if    B(1)=P and B(2)=P and B(3)=EMPTY then return 3;
    elsif B(4)=P and B(5)=P and B(6)=EMPTY then return 6;
    elsif B(7)=P and B(8)=P and B(9)=EMPTY then return 9;
    elsif B(1)=P and B(3)=P and B(2)=EMPTY then return 2;
    elsif B(4)=P and B(6)=P and B(5)=EMPTY then return 5;
    elsif B(7)=P and B(9)=P and B(8)=EMPTY then return 8;
    elsif B(2)=P and B(3)=P and B(1)=EMPTY then return 1;
    elsif B(5)=P and B(6)=P and B(4)=EMPTY then return 4;
    elsif B(8)=P and B(9)=P and B(7)=EMPTY then return 7;
    else return 0;
    end if;
  end L;

  -- Achar o quadrado vazio na coluna
  function C(P: Square; B: Grid) return natural is
  begin
    if    B(1)=P and B(4)=P and B(7)=EMPTY then return 7;
    elsif B(2)=P and B(5)=P and B(8)=EMPTY then return 8;
    elsif B(3)=P and B(6)=P and B(9)=EMPTY then return 9;
    elsif B(1)=P and B(7)=P and B(4)=EMPTY then return 4;
    elsif B(2)=P and B(8)=P and B(5)=EMPTY then return 5;
    elsif B(3)=P and B(9)=P and B(6)=EMPTY then return 6;
    elsif B(4)=P and B(7)=P and B(1)=EMPTY then return 1;
    elsif B(5)=P and B(8)=P and B(2)=EMPTY then return 2;
    elsif B(6)=P and B(9)=P and B(3)=EMPTY then return 3;
    else return 0;
    end if;
  end C;

  -- Achar o quadrado vazio na diagonal
  function D(P: Square; B: Grid) return natural is
  begin
    if    B(1)=P and B(5)=P and B(9)=EMPTY then return 9;
    elsif B(1)=P and B(9)=P and B(5)=EMPTY then return 5;
    elsif B(5)=P and B(9)=P and B(1)=EMPTY then return 1;
    elsif B(7)=P and B(5)=P and B(3)=EMPTY then return 3;
    elsif B(7)=P and B(3)=P and B(5)=EMPTY then return 5;
    elsif B(3)=P and B(5)=P and B(7)=EMPTY then return 7;
    else return 0;
    end if;
  end D;

begin

  process(PLAYER, BOARD)
    variable linemove, colmove, diagmove: natural;
  begin
    linemove :=  L(PLAYER, BOARD);
    colmove :=  C(PLAYER, BOARD);
    diagmove := D(PLAYER, BOARD);
	 -- v?? qual movimento pode fazer pra ganhar/bloquear
    if    linemove /= 0  then MOVE <= linemove;
    elsif colmove /= 0  then MOVE <= colmove;
    elsif diagmove /= 0 then MOVE <= diagmove;
    else MOVE <= 0;
    end if;
  end process;
end TwoInARow_arch;

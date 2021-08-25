library IEEE;
use IEEE.std_logic_1164.all;
use work.TTTdefs.all;

-- When MAKEMOVE is enabled, take in YMOVE, and try to play this move on
-- the board. When MOVEMADE goes high, this is X's move value. If it is 10,
-- then the previous YMOVE was illegal.
-- When XWIN is high, X wins the game. When DRAW is high, a draw.
-- To reset the game, assert RESET.
entity tictactoe is
  port( CLK: in std_logic;
        YMOVE: in natural;
        XMOVE: out natural;
        XWIN: out std_logic;
        DRAW: out std_logic;
        MAKEMOVE: in std_logic;
        MOVEMADE: out std_logic;
        RESET: std_logic
  );
end tictactoe;

architecture behavioral of tictactoe is
  component TwoInARow is
    port ( PLAYER: in Square;
           BOARD: in Grid;
           MOVE: out natural );
  end component;

    -- The state of the unit
    type STATE_TYPE is (YMOVING, XMOVING);
    signal state: STATE_TYPE := YMOVING;

  -- Our game board
  signal board: Grid := (others => EMPTY);
  signal winning_move: natural;
  signal blocking_move: natural;

begin
  winmove: TwoInARow port map (
    PLAYER => X,
    BOARD => board,
    MOVE => winning_move
  );

  blockmove: TwoInARow port map (
    PLAYER => Y,
    BOARD => board,
    MOVE => blocking_move
  );


  process(CLK)
  begin
    if (rising_edge(CLK)) then
      -- Reset the board
      if (RESET = '1') then
        report "RESET the board";
        board <= (others => EMPTY);
        DRAW <= '0'; XWIN <= '0'; MOVEMADE <= '0';
      end if;

      case state is
        when YMOVING =>
          -- Let Y make a move
          MOVEMADE <= '0';
          if (MAKEMOVE = '1') then
            report "Y's move is " & integer'image(ymove);
            -- Y cannot make this move, set XMOVE to 0
            if (board(YMOVE) /= EMPTY) then
              XMOVE <= 10; MOVEMADE <= '1';
            else
              board(YMOVE) <= Y;        -- Make the move for Y
              state <= XMOVING;
            end if;
          end if;

        when XMOVING =>
			report "X moving, MOVEMADE is on";
			report "Board is: ";
			report "   " & Square'image(board(1)) & "  " & Square'image(board(2)) &	"  " & Square'image(board(3));
			report "   " & Square'image(board(4)) & "  " & Square'image(board(5)) & "  " & Square'image(board(6));
			report "   " & Square'image(board(7)) & "  " & Square'image(board(8)) & "  " & Square'image(board(9));
          MOVEMADE <= '1';
          state <= YMOVING;

          -- See if we now have a move
          if (winning_move /= 0) then
            report "Winning move" & integer'image(winning_move);
            XMOVE <= winning_move; board(winning_move) <= X;
            XWIN <= '1';
          elsif (blocking_move /= 0) then
            report "Blocking move" & integer'image(blocking_move);
            XMOVE <= blocking_move; board(blocking_move) <= X;

          -- No good move, so find any empty square
          elsif (board(5) = EMPTY) then XMOVE <= 5; board(5) <= X; -- report "Move 5";
          elsif (board(1) = EMPTY) then XMOVE <= 1; board(1) <= X; -- report "Move 1";
          elsif (board(3) = EMPTY) then XMOVE <= 3; board(3) <= X; -- report "Move 3";
          elsif (board(7) = EMPTY) then XMOVE <= 7; board(7) <= X; -- report "Move 7";
          elsif (board(9) = EMPTY) then XMOVE <= 9; board(9) <= X; -- report "Move 9";
          elsif (board(2) = EMPTY) then XMOVE <= 2; board(2) <= X; -- report "Move 2";
          elsif (board(4) = EMPTY) then XMOVE <= 4; board(4) <= X; -- report "Move 4";
          elsif (board(6) = EMPTY) then XMOVE <= 6; board(6) <= X; -- report "Move 6";
          elsif (board(8) = EMPTY) then XMOVE <= 8; board(8) <= X; -- report "Move 8";

          -- No move at all, so declare a draw
          else XMOVE <= 0; DRAW <= '1';
               report "Draw";
          end if;
      end case;
    end if;
  end process;

end behavioral;

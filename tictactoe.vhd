library IEEE;
use IEEE.std_logic_1164.all;
use work.TTTdefs.all;

entity tictactoe is
  port( CLK: in std_logic;
        YMOVE: in natural;
        XMOVE: out natural;
        XWIN: out std_logic;
        DRAW: out std_logic;
        RESET: std_logic
  );
end tictactoe;

architecture behavioral of tictactoe is
  component TwoInARow is
    port ( PLAYER: in Square;
           BOARD: in Grid;
           MOVE: out natural );
  end component;

  type STATE_TYPE is (YMOVING, XMOVING);
  signal state: STATE_TYPE := YMOVING;
  signal board: Grid := (others => EMPTY);

begin
  process(CLK)
  begin
    if (rising_edge(CLK)) then
      if (RESET = '1') then -- Resetar
        report "RESET";
        board <= (others => EMPTY); 
        DRAW <= '0'; XWIN <= '0';
      end if;

      case state is
        when YMOVING =>
          -- Y faz o movimento (o jogador)
            if (board(YMOVE) /= EMPTY) then -- se a casa estiver ocupada ele não pode fazer
              state <= YMOVING;
            else
              board(YMOVE) <= Y;        -- Se a casa estiver vazia, o jogador pode fazer o movimento.
              state <= XMOVING;
          end if;

        when XMOVING => -- imprime o tabuleiro
			report "Tabuleiro: ";
			report "   " & Square'image(board(1)) & " | " & Square'image(board(2)) & " | " & Square'image(board(3));
			report "   " & Square'image(board(4)) & " | " & Square'image(board(5)) & " | " & Square'image(board(6));
			report "   " & Square'image(board(7)) & " | " & Square'image(board(8)) & " | " & Square'image(board(9));
          state <= YMOVING;
			 
      end case;
    end if;
  end process;

end behavioral;

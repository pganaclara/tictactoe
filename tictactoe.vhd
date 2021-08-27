library IEEE;
use IEEE.std_logic_1164.all;
use work.TTTdefs.all;

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

    type STATE_TYPE is (YMOVING, XMOVING);
    signal state: STATE_TYPE := YMOVING;

  signal board: Grid := (others => EMPTY);
  signal winning_move: natural;
  signal blocking_move: natural;

begin
-- Procura uma jogada para ganhar, ou seja, procura se tem alguma linha, coluna ou diagonal faltando apenas 1 casa
  winmove: TwoInARow port map (
    PLAYER => X,
    BOARD => board,
    MOVE => winning_move
  );

 -- Procura uma jogada pra bloquear o outro jogador se ele estiver proximo a ganhar
  blockmove: TwoInARow port map (
    PLAYER => Y,
    BOARD => board,
    MOVE => blocking_move
  );


  process(CLK)
  begin
    if (rising_edge(CLK)) then
      -- Resetar
      if (RESET = '1') then
        report "RESET";
        board <= (others => EMPTY);
        DRAW <= '0'; XWIN <= '0'; MOVEMADE <= '0';
      end if;

      case state is
        when YMOVING =>
          -- Y faz o movimento (o jogador)
          MOVEMADE <= '0';
          if (MAKEMOVE = '1') then
            report "O movimento escolhido foi " & integer'image(ymove); -- indica qual movimento o jogador quer fazer
            if (board(YMOVE) /= EMPTY) then -- se a casa estiver ocupada ele não pode fazer e passa a vez
              XMOVE <= 0; MOVEMADE <= '1';
            else
              board(YMOVE) <= Y;        -- Se a casa estiver vazia, o jogador pode fazer o movimento.
              state <= XMOVING;
            end if;
          end if;

        when XMOVING => -- imprime o tabuleiro
			report "Tabuleiro: ";
			report "   " & Square'image(board(1)) & " | " & Square'image(board(2)) & " | " & Square'image(board(3));
			report "   " & Square'image(board(4)) & " | " & Square'image(board(5)) & " | " & Square'image(board(6));
			report "   " & Square'image(board(7)) & " | " & Square'image(board(8)) & " | " & Square'image(board(9));
          MOVEMADE <= '1';
          state <= YMOVING;

          -- Olha se tem como o PC ganhar ou bloquear o jogador
          if (winning_move /= 0) then
            report "Movimento ganhador" & integer'image(winning_move);
            XMOVE <= winning_move; board(winning_move) <= X;
            XWIN <= '1';
          elsif (blocking_move /= 0) then
            report "Movimento bloqueador" & integer'image(blocking_move);
            XMOVE <= blocking_move; board(blocking_move) <= X;

          -- Se não tiver, vai pra qualquer vazio
          elsif (board(5) = EMPTY) then XMOVE <= 5; board(5) <= X; 
          elsif (board(1) = EMPTY) then XMOVE <= 1; board(1) <= X; 
          elsif (board(3) = EMPTY) then XMOVE <= 3; board(3) <= X; 
          elsif (board(7) = EMPTY) then XMOVE <= 7; board(7) <= X; 
          elsif (board(9) = EMPTY) then XMOVE <= 9; board(9) <= X; 
          elsif (board(2) = EMPTY) then XMOVE <= 2; board(2) <= X; 
          elsif (board(4) = EMPTY) then XMOVE <= 4; board(4) <= X;
          elsif (board(6) = EMPTY) then XMOVE <= 6; board(6) <= X; 
          elsif (board(8) = EMPTY) then XMOVE <= 8; board(8) <= X; 

          -- Se não tiver movimento vazio é empate
          else XMOVE <= 0; DRAW <= '1';
               report "Empate";
          end if;
      end case;
    end if;
  end process;

end behavioral;

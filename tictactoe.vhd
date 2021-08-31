library IEEE;
use IEEE.std_logic_1164.all;
use work.TTTdefs.all;

entity tictactoe is
  port( CLK: in std_logic;
        YMOVE: in natural;
        XMOVE: out natural;
        XWIN: out std_logic;
		  YWIN: out std_logic;
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

  
function winplayer(B: Grid) return std_logic is
	begin
	 if    B(1)= X and B(2)= X and B(3)= X then return '1';
    elsif B(4)= X and B(5)= X and B(6)= X then return '1';
    elsif B(7)= X and B(8)= X and B(9)= X then return '1';
	 elsif B(1)= X and B(4)= X and B(7)= X then return '1';
    elsif B(2)= X and B(5)= X and B(8)= X then return '1';
    elsif B(3)= X and B(6)= X and B(9)= X then return '1';
	 elsif B(5)= X and B(9)= X and B(1)= X then return '1';
    elsif B(7)= X and B(5)= X and B(3)= X then return '1';
    else return '0';
	 end if;
	end winplayer;
	
function winpc(B: Grid) return std_logic is
	begin
	 if    B(1)= Y and B(2)= Y and B(3)= Y then return '1';
    elsif B(4)= Y and B(5)= Y and B(6)= Y then return '1';
    elsif B(7)= Y and B(8)= Y and B(9)= Y then return '1';
	 elsif B(1)= Y and B(4)= Y and B(7)= Y then return '1';
    elsif B(2)= Y and B(5)= Y and B(8)= Y then return '1';
    elsif B(3)= Y and B(6)= Y and B(9)= Y then return '1';
	 elsif B(5)= Y and B(9)= Y and B(1)= Y then return '1';
    elsif B(7)= Y and B(5)= Y and B(3)= Y then return '1';
    else return '0';
    end if;
	end winpc;
	
function old(B: Grid) return std_logic is
	begin
	 if    B(1) /= EMPTY and B(2)/= EMPTY and B(3) /= EMPTY and B(4)/= EMPTY and B(5)/= EMPTY and B(6)/= EMPTY and B(7)/= EMPTY and B(8)/= EMPTY and B(9)/= EMPTY then return '1';
    else return '0';
    end if;
	end old;		
	
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
			 
		-- lógica de ganha ou empata do PICK.vhd
		
      end case;
    end if;
	 if winplayer(BOARD) = '1' then
		XWIN <= '1';
		YWIN <= '0';
		DRAW <= '0';
		report "PLAYER WINS";
	 elsif winpc(BOARD) = '1' then
		YWIN <= '1';
		XWIN <= '0';
		DRAW <= '0';
		report "PC WINS";
    elsif winpc(BOARD) = '0' and winplayer(BOARD) = '0' and old(BOARD) = '1' then
		DRAW <= '1';
		YWIN <= '0';
		XWIN <= '0';
		report "TIC TAC TOE";
	 else
		DRAW <= '0';
		YWIN <= '0';
		XWIN <= '0';
	 end if;
  end process;

end behavioral;
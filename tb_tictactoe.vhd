library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;
use work.TTTdefs.all;

entity tb_tictactoe is
end tb_tictactoe;

architecture teste of tb_tictactoe is

component TwoInARow is
    port ( PLAYER: in Square;
           BOARD: in Grid;
           MOVE: out natural );
  end component;

signal data_in          : Square;
signal board				: Grid;
signal data_output      : natural;

signal read_data_in    : std_logic:='0';
signal flag_write      : std_logic:='0';   

file   inputs_data_in  : text open read_mode  is "data_in.txt";
file   outputs         : text open write_mode is "saida.txt";

-- Clock period definitions
constant PERIOD     : time := 20 ns;
constant DUTY_CYCLE : real := 0.5;
constant OFFSET     : time := 5 ns;

begin
-- Instantiate the Unit Under Test (UUT) or Design Under Test (DUT)
UUT: TwoInARow port map(PLAYER => data_in, BOARD => board, MOVE => data_output);

------------------------------------------------------------------------------------
----------------- processo para leer os dados do arquivo data_in.txt
------------------------------------------------------------------------------------
read_inputs_data_in:process
		variable linea : line;
		variable input : Square;
	begin
		while not endfile(inputs_data_in) loop
		      if read_data_in = '1' then
			     readline(inputs_data_in,linea);
						read(linea,input);
						data_in <= input;
				end if;
				wait for PERIOD;
		end loop;
		wait;
	end process read_inputs_data_in;	
	
------------------------------------------------------------------------------------
----------------- processo para gerar os estimulos de entrada
------------------------------------------------------------------------------------
	
   tb_stimulus : PROCESS
   BEGIN
        WAIT FOR (OFFSET + 3*PERIOD);
            read_data_in <= '1';		
			for i in mim_value to max_value loop
		        wait for PERIOD;
		    end loop;
            read_data_in <= '0';		
		WAIT;
   END PROCESS tb_stimulus;	

------------------------------------------------------------------------------------
------ processo para gerar os estimulos de escrita do arquivo de saida
------------------------------------------------------------------------------------   
   
   escreve_outputs : PROCESS
   BEGIN
        WAIT FOR (4*PERIOD);
            flag_write <= '1';
			for i in mim_value to max_value loop
		        wait for PERIOD;
		    end loop;
            flag_write <= '0';			
		WAIT;
   END PROCESS escreve_outputs;   
   
-- ------------------------------------------------------------------------------------
-- ------ processo para escrever os dados de saida no arquivo saida.txt
-- ------------------------------------------------------------------------------------   
   
	write_outputs:process
		variable linea  : line;
		variable output : std_logic_vector (7 downto 0);
	begin
		while true loop
			if (flag_write ='1')then
				output := data_output;
				write(linea,output);
				writeline(outputs,linea);
			end if;
			wait for PERIOD;
		end loop; 
	end process write_outputs; 
	
end teste;
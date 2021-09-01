# Tic Tac Toe
The tictactoe game (Jogo da Velha) developed in VHDL as a final project of Digital System Laboratory subject at UFMG.

# Execution
This project was developed without the use of boards and can be compiled on the computer. It was developed in Quartus II 14.1 using MAX10. 

The game is player versus PC. The player sends the square of choice and plays with the PC that chooses his movement according to the player's movement. The [data_in.txt](/simulation/data_in.txt), inside the simulation folder, is an input and has the squares of choice by the player and [saida.txt](/simulation/saida.txt) is an output and has the squares chosen by the PC.

File                                 | Overall function
---                                  | ---
[TTTdefs.vhd](TTTdefs.vhd)           | Definition of square and game grid
[TwoInARow.vhd](TwoInARow.vhd)       | Entity that finds winning or blocking move for the PC
[PICK.vhd](PICK.vhd)                 | Entity that search for movement to pick
[GETMOVE.vhd](GETMOVE.vhd)           | Datapath using PICK and TwoInARow in order to make a move
[tictactoe.vhd](tictactoe.vhd)       | Definition of game logic, including win, lost and draw and change of player
[tb_tictactoe.vhd](tb_tictactoe.vhd) | Test bench including the reading of data_in.txt and writing of saida.txt

# Group
<table>
  <tr>
    <td align="center"><a href="https://github.com/pganaclara"><img style="border-radius: 50%;" src="https://github.com/pganaclara.png" width="100px;" alt=""/><br /><sub><b>Ana Gonçalves</b></sub></a><br />
    <td align="center"><a href="https://github.com/antoniobritto07"><img style="border-radius: 50%;" src="https://github.com/antoniobritto07.png" width="100px;" alt=""/><br /><sub><b>Antônio Britto</b></sub></a><br />
    <td align="center"><a href="https://github.com/daniel-web15"><img style="border-radius: 50%;" src="https://github.com/daniel-web15.png" width="100px;" alt=""/><br /><sub><b>Daniel Almeida</b></sub></a><br />
  </tr>
</table>

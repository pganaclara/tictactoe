transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/14.1/tictactoe/TTTdefs.vhd}
vcom -93 -work work {C:/altera/14.1/tictactoe/tictactoe.vhd}
vcom -93 -work work {C:/altera/14.1/tictactoe/TwoInARow.vhd}
vcom -93 -work work {C:/altera/14.1/tictactoe/PICK.vhd}
vcom -93 -work work {C:/altera/14.1/tictactoe/GETMOVE.vhd}

vcom -93 -work work {C:/altera/14.1/tictactoe/tb_tictactoe.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_tictactoe

add wave *
view structure
view signals
run 400 ns

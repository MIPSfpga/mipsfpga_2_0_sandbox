rd /s /q sim
md sim
cd sim

copy ..\*.hex .

\iverilog\bin\iverilog -D SIMULATION -g2005 -I ../../../system_rtl -I ../../../core_rtl ../../../core_rtl/mvp*.v ../../../core_rtl/RAM*.v  ../../../core_rtl/*xilinx.v ../../../core_rtl/m14k*.v ../../../system_rtl/*.v ../../../testbench/*.v
\iverilog\bin\vvp a.out > a.lst
\iverilog\gtkwave\bin\gtkwave.exe dump.vcd

rm -rf sim
mkdir sim
cd sim
cp ../*.hex .

iverilog -D SIMULATION -g2005 -I ../../../system_rtl -I ../../../core_rtl ../../../core_rtl/mvp*.v ../../../core_rtl/RAM*.v  ../../../core_rtl/*xilinx.v ../../../core_rtl/m14k*.v ../../../system_rtl/*.v ../../../testbench/*.v

vvp a.out > a.lst

gtkwave dump.vcd
cd .. && rm -rf sim 

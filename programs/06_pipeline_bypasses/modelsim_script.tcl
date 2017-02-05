vlib work
vlog -vlog01compat +define+SIMULATION +incdir+../../../system_rtl +incdir+../../../core_rtl ../../../core_rtl/*.v ../../../system_rtl/*.v ../../../testbench/*.v
vsim work.mfp_testbench
add wave sim:/mfp_testbench/*
run -all

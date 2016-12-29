# -EL           - Little-endian
# -march=m14kc  - MIPSfpga = MIPS microAptiv UP based on MIPS M14Kc
# -msoft-float  - should not use floating-point processor instructions
# -O2           - optimization level
# -S            - compile to assembly

mips-mti-elf-gcc -EL -march=m14kc -msoft-float -O2 -S main.c

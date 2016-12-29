#include "mfp_memory_mapped_registers.h"

volatile int handledsw0 = 0;
volatile int handledsw1 = 0;

volatile int toggle = 0;

void __attribute__ ((interrupt)) _mips_interrupt ()
{
    toggle = ! toggle;
}

int main ()
{
    return 0;
}

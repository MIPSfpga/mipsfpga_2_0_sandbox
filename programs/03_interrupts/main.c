#include <mips/cpu.h>

#include "mfp_memory_mapped_registers.h"

volatile int general_exception_toggle = 0;

void __attribute__ ((interrupt, keep_interrupts_masked)) general_exception_handler ()
{
    general_exception_toggle = ! general_exception_toggle;
}

volatile int interrupt_toggle = 0;

void __attribute__ ((interrupt, keep_interrupts_masked)) interrupt_handler ()
{
    interrupt_toggle = ! interrupt_toggle;
}

int main ()
{
    // Enable interrupts
    mips32_bs_c0 (C0_STATUS, SR_HINT0);

    for (;;)
    {
        MFP_RED_LEDS   = general_exception_toggle ^ interrupt_toggle;
        MFP_GREEN_LEDS = general_exception_toggle ^ interrupt_toggle;
    }

    return 0;
}

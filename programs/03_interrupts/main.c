#include "mfp_memory_mapped_registers.h"

volatile int general_exception_toggle = 0;

void __attribute__ ((interrupt /* , keep_interrupts_masked */ )) general_exception_handler ()
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
    for (;;)
    {
        MFP_RED_LEDS   = general_exception_toggle ^ interrupt_toggle;
        MFP_GREEN_LEDS = general_exception_toggle ^ interrupt_toggle;
    }

    return 0;
}

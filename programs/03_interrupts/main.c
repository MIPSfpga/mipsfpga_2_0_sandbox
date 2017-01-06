#include <mips/cpu.h>

#include "mfp_memory_mapped_registers.h"

volatile int n;

void __attribute__ ((interrupt, keep_interrupts_masked)) general_exception_handler ()
{
    unsigned cause = mips32_getcr ();

    if (cause & CR_HINT0)
        n  = 0;
    else if (cause & CR_HINT1)
        n  = 0x100000;
}

int main ()
{
    if (MFP_SWITCHES & 4)  // Switch 2 is on
    {
        // Count without interrupts, polling buttons in the loop
        
        for (n = 0;; n ++)
        {
            unsigned buttons = MFP_BUTTONS;

            if (buttons & 1)
                n = 0;
            else if (buttons & 2)
                n = 0x100000;

            MFP_7_SEGMENT_HEX = ((n >> 8) & 0xffffff00) | (n & 0xff);
        }
    }
    else
    {
        // Count with interrupts, without polling buttons in the loop
        
        // Clear boot interrupt vector bit in Coprocessor 0 Status register

        mips32_bicsr (SR_BEV);
        
        // Set master interrupt enable bit, as well as individual interrupt enable bits
        // in Coprocessor 0 Status register

        mips32_bissr (SR_IE | SR_HINT0 | SR_HINT1 | SR_HINT2 | SR_HINT3 | SR_HINT4 | SR_HINT5);

        for (n  = 0;; n  ++)
            MFP_7_SEGMENT_HEX = ((n >> 8) & 0xffffff00) | (n & 0xff);
    }

    return 0;
}

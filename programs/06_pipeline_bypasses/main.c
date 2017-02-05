#include "mfp_memory_mapped_registers.h"

/*
int main ()
{
    MFP_7_SEGMENT_HEX = MFP_SWITCHES >> 4;

    switch (MFP_SWITCHES >> 4)
    {
        case 0: demo_bypass_a_from_alu_instruction        (); break;
        case 1: demo_bypass_b_from_alu_instruction        (); break;
        case 2: demo_bypass_a_and_b_from_alu_instruction  (); break;
        case 3: demo_bypass_a_from_load_instruction       (); break;
        case 4: demo_bypass_b_from_load_instruction       (); break;
        case 5: demo_bypass_a_and_b_from_load_instruction (); break;
    }

    return 0;
}
*/

int main ()
{
    for (;;)
    {
        MFP_7_SEGMENT_HEX = 1;
        demo_bypass_a_from_alu_instruction ();

        MFP_7_SEGMENT_HEX = 2;
        demo_bypass_b_from_alu_instruction ();

        MFP_7_SEGMENT_HEX = 3;
        demo_bypass_a_and_b_from_alu_instruction ();

        MFP_7_SEGMENT_HEX = 4;
        demo_bypass_a_from_load_instruction ();

        MFP_7_SEGMENT_HEX = 5;
        demo_bypass_b_from_load_instruction ();

        MFP_7_SEGMENT_HEX = 6;
        demo_bypass_a_and_b_from_load_instruction ();
    }

    return 0;
}

#include "mfp_memory_mapped_registers.h"

int main ()
{
    int n;

    for (n = 0;; n ++)
    {
        MFP_RED_LEDS      = n;
        MFP_GREEN_LEDS    = n;
        MFP_7_SEGMENT_HEX = ((n >> 8) & 0xffffff00) | (n & 0xff);
    }

    return 0;
}

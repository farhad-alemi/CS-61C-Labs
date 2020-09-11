#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "lfsr.h"

void lfsr_calculate(uint16_t *reg) {
uint16_t mask, mask0, mask2, mask3, mask5;

    mask0 = 1u & *reg;
    mask2 = 1u & (*reg >> 2u);
    mask3 = 1u & (*reg >> 3u);
    mask5 = 1u & (*reg >> 5u);

    mask = ((mask0 ^ mask2) ^ mask3) ^ mask5;

   *reg = (*reg >> 1u) | (mask << 15);
}

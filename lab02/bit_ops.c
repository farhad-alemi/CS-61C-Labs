#include <stdio.h>
#include "bit_ops.h"

// Return the nth bit of x.
// Assume 0 <= n <= 31
unsigned get_bit(unsigned x,
                 unsigned n) {
    unsigned intermediate = x >> n;
    return intermediate & (unsigned) 1;
}
// Set the nth bit of the value of x to v.
// Assume 0 <= n <= 31, and v is 0 or 1
void set_bit(unsigned * x,
             unsigned n,
             unsigned v) {
    unsigned mask, intermediate1, intermediate2;

    mask = ((unsigned) 1) << n;
    intermediate1 = v << n;
    intermediate2 = ((*x) & ~mask);

    *x =  intermediate2 | intermediate1;
}
// Flip the nth bit of the value of x.
// Assume 0 <= n <= 31
void flip_bit(unsigned * x,
              unsigned n) {
    unsigned mask;

    mask = ((unsigned) 1) << n;
    *x = *x ^ mask;
}

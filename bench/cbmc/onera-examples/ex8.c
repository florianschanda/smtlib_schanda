#include <assert.h>
#include "defs.h"

#define rhs(x1,x2) (0)

#define lhs (1)

#define initial(x1,x2) (-1. <= (x1) && (x1) <= 1. && \
			-1. <= (x2) && (x2) <= 1.)

int main(int argc, char** argv)
{
  float_t x1;
  float_t x2;
//#ifdef BASE
  __CPROVER_assume(initial(x1,x2));
  assert(rhs(x1,x2) <= lhs);
//#endif
//#ifdef STEP
//#ifndef CBMC
  while (1)
  {
//#endif
    __CPROVER_assume(rhs(x1,x2) >= 0.);
//#ifdef CBMC
//    __CPROVER_assume(rhs(x1,x2) <= lhs);
//#endif

    float_t pre_x1 = x1;
    float_t pre_x2 = x2;
    if (x2 <= x1) 
    {
      x1 = 0.687 * pre_x1 + 0.558 * pre_x2 - 0.0001 * pre_x1 * pre_x2;
      x2 = -0.292 * pre_x1 + 0.773 * pre_x2;
    }
    else 
    {
      x1 = 0.369 * pre_x1 + 0.532 * pre_x2 - 0.0001 * P2(pre_x1);
      x2 = -1.27 * pre_x1 + 0.12 * pre_x2 - 0.0001 * pre_x1 * pre_x2;
    }

    assert(rhs(x1,x2) <= lhs);
//#ifndef CBMC
  }
//#endif
//#endif
}

#include <assert.h>
#include "defs.h"

#define rhs(x,y) (+1358398984810823./72057594037927936.*(x)*(x)-139672606659999./4503599627370496.*(x)*(y)+288655120096171./18014398509481984.*(y)*(y))

#define lhs (2252377203355975./2251799813685248.)

#define inputs(in0) (-1. <= (in0) && (in0) <= 1.)

int main(int argc, char** argv)
{
  float_t x;
  float_t y;
//#ifdef BASE
  x = 0.;
  y = 0.;
  assert(rhs(x,y) <= lhs);
//#endif
//#ifdef STEP
//#ifndef CBMC
  while (1)
  {
//#endif
    float_t in0;
    __CPROVER_assume(inputs(in0));
    __CPROVER_assume(rhs(x,y) >= 0.);
//#ifdef CBMC
//    __CPROVER_assume(rhs(x,y) <= lhs);
//#endif

    float_t pre_x = x;
    float_t pre_y = y;
    x = 1.5 * pre_x - 0.7 * pre_y + 1.6 * in0;
    y = pre_x;

    assert(rhs(x,y) <= lhs);
//#ifndef CBMC
  }
//#endif
//#endif
}

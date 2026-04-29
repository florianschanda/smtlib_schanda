#include <assert.h>
#include "defs.h"

/*
  (+4958602768006141/140737488355328*v_x0^2+2480386775079211/70368744177664*v_x0*v_x1+4958765470277363/140737488355328*v_x1^2 <= 7439443541293127/70368744177664)),

 */

#define rhs(x0,x1) (4958602768006141./140737488355328.*(x0)*(x0)+2480386775079211./70368744177664.*(x0)*(x1)+4958765470277363./140737488355328.*(x1)*(x1))

#define lhs (7439443541293127./70368744177664.)

#define initial(x0,x1) (0. <= (x0) && (x0) <= 1. && 0. <= (x1) && (x1) <= 1.)

int main(int argc, char** argv)
{
  float_t x0;
  float_t x1;
//#ifdef BASE
  __CPROVER_assume(initial(x0,x1));
  assert(rhs(x0,x1) <= lhs);
//#endif
//#ifdef STEP
//#ifndef CBMC
  while (1)
  {
//#endif
    __CPROVER_assume(rhs(x0,x1) >= 0.);
//#ifdef CBMC
//    __CPROVER_assume(rhs(x0,x1) <= lhs);
//#endif

    float_t pre_x0 = x0;
    float_t pre_x1 = x1;
    x0 = pre_x0 + 0.01 * pre_x1;
    x1 = -0.01 * pre_x0 + 0.99 * pre_x1;

    assert(rhs(x0,x1) <= lhs);
//#ifndef CBMC
  }
//#endif
//#endif
}

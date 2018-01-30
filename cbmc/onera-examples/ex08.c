#include <assert.h>
#include "defs.h"

/*
  (+7459941337994923/562949953421312*v_x0^2+533332992736627/144115188075855872*v_x0*v_x1+232436693617861/17592186044416*v_x1^2 <= 3725186331496383/140737488355328)),
 */

#define rhs(x0,x1)   (7459941337994923./562949953421312.*(x0)*(x0)+533332992736627./144115188075855872.*(x0)*(x1)+232436693617861./17592186044416.*(x1)*(x1))


#define lhs (3725186331496383./140737488355328.)

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
    x0 = 0.95 * pre_x0 + 0.09975 * pre_x1;
    x1 = -0.1 * pre_x0 + 0.95 * pre_x1;

    assert(rhs(x0,x1) <= lhs);
//#ifndef CBMC
  }
//#endif
//#endif
}

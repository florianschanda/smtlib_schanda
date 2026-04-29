#include <assert.h>
#include "defs.h"

/*
  (+1708734303148029/281474976710656*v_x0^2+-342812102511087/35184372088832*v_x0*v_x1+-321307487622771/140737488355328*v_x0*v_x2+805759947960619/70368744177664*v_x1^2+5985635558935835/2251799813685248*v_x1*v_x2+8509415875652495/2251799813685248*v_x2^2 <= 2257909104782219/2251799813685248)),
*/

#define rhs(x0,x1,x2) (+1708734303148029./281474976710656.*(x0)*(x0)-342812102511087./35184372088832.*(x0)*(x1)-321307487622771./140737488355328.*(x0)*(x2)+805759947960619./70368744177664.*(x1)*(x1)+5985635558935835./2251799813685248.*(x1)*(x2)+8509415875652495./2251799813685248.*(x2)*(x2))

#define lhs (2257909104782219./2251799813685248.)

#define inputs(in0) (-1. <= (in0) && (in0) <= 1.)

int main(int argc, char** argv)
{
  float_t x0;
  float_t x1;
  float_t x2;
//#ifdef BASE
  x0 = 0.;
  x1 = 0.;
  x2 = 0.;
  assert(rhs(x0,x1,x2) <= lhs);
//#endif
//#ifdef STEP
//#ifndef CBMC
  while (1)
  {
//#endif
    float_t in0;
    __CPROVER_assume(inputs(in0));
    __CPROVER_assume(rhs(x0,x1,x2) >= 0.);
//#ifdef CBMC
//    __CPROVER_assume(rhs(x0,x1,x2) <= lhs);
//#endif

    float_t pre_x0 = x0;
    float_t pre_x1 = x1;
    float_t pre_x2 = x2;
    x0 = 0.9379 * pre_x0 - 0.0381 * pre_x1 - 0.0414 * pre_x2 + 0.0237 * in0;
    x1 = -0.0404 * pre_x0 + 0.968 * pre_x1 - 0.0179 * pre_x2 + 0.0143 * in0;
    x2 = 0.0142 * pre_x0 - 0.0197 * pre_x1 + 0.9823 * pre_x2 + 0.0077 * in0;

    assert(rhs(x0,x1,x2) <= lhs);
//#ifndef CBMC
  }
//#endif
//#endif
}

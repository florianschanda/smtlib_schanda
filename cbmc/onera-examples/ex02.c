#include <assert.h>
#include "defs.h"

/*
  (+458833715269985/140737488355328*v_x0^2+-2909400587767961/562949953421312*v_x0*v_x1+-3670669721458313/1125899906842624*v_x0*v_x2+5084667233215737/2251799813685248*v_x0*v_x3+176306157621117/70368744177664*v_x1^2+5818801174492591/2251799813685248*v_x1*v_x2+-632489644074301/281474976710656*v_x1*v_x3+292733209057043/281474976710656*v_x2^2+-5084667231963409/4503599627370496*v_x2*v_x3+6121806344028017/9007199254740992*v_x3^2 <= 2252309788771109/2251799813685248)),
*/

#define rhs(x0,x1,x2,x3) (+458833715269985./140737488355328.*(x0)*(x0)-2909400587767961./562949953421312.*(x0)*(x1)-3670669721458313./1125899906842624.*(x0)*(x2)+5084667233215737./2251799813685248.*(x0)*(x3)+176306157621117./70368744177664.*(x1)*(x1)+5818801174492591./2251799813685248.*(x1)*(x2)-632489644074301./281474976710656.*(x1)*(x3)+292733209057043./281474976710656.*(x2)*(x2)-5084667231963409./4503599627370496.*(x2)*(x3)+6121806344028017./9007199254740992.*(x3)*(x3))

#define lhs (2252309788771109./2251799813685248.)

#define inputs(in0) (-1. <= (in0) && (in0) <= 1.)

int main(int argc, char** argv)
{
  float_t x0;
  float_t x1;
  float_t x2;
  float_t x3;
//#ifdef BASE
  x0 = 0.;
  x1 = 0.;
  x2 = 0.;
  x3 = 0.;
  assert(rhs(x0,x1,x2,x3) <= lhs);
//#endif
//#ifdef STEP
//#ifndef CBMC
  while (1)
  {
//#endif
    float_t in0;
    __CPROVER_assume(inputs(in0));
    __CPROVER_assume(rhs(x0,x1,x2,x3) >= 0.);
//#ifdef CBMC
//    __CPROVER_assume(rhs(x0,x1,x2,x3) <= lhs);
//#endif

    float_t pre_x0 = x0;
    float_t pre_x1 = x1;
    float_t pre_x2 = x2;
    float_t pre_x3 = x3;
    x0 = 1.5 * pre_x0 - 0.7 * pre_x1 - 0.7 * pre_x2 + 0.4 * pre_x3 + 0.5 * in0;
    x1 = pre_x0;
    x2 = in0;
    x3 = pre_x2;

    assert(rhs(x0,x1,x2,x3) <= lhs);
//#ifndef CBMC
  }
//#endif
//#endif
}

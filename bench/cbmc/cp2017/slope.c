#include <assert.h>

float slope(float x0, float h)
{
  __CPROVER_assume(x0==13);
  __CPROVER_assume(h>=0.000000001 && h<=0.000001);
  float x1=x0+h; float x2=x0-h;
  float fx1=x1*x1; float fx2=x2*x2;
  float res=(fx1-fx2)/(2.0*h);
  assert(res<=25);
  return res;
}

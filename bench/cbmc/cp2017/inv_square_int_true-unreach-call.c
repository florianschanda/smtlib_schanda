#include <assert.h>

int f(int x)
{
  float y, z;

  __CPROVER_assume(x>=-10 && x<=10);

  y=x*x-2.f;

  assert(y!=0.f);

  z=1.f/y;

  return 0;

}

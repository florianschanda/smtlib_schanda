#include <assert.h>

int g(int x)
{
  float y, z;
  __CPROVER_assume(x>=-10 && x<=10);

  y=x*x-4.f;

  assert(y!=0.f);

  z=1.f/y;

  return 0;
}

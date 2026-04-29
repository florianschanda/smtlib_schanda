#include <math.h>

double triangle1(double a, double c, double b) {
  __CPROVER_assume(1.0 <= a && a <= 9.0);
  __CPROVER_assume(1.0 <= b && b <= 9.0);
  __CPROVER_assume(1.0 <= c && c <= 9.0);
  __CPROVER_assume(a + b > c + 0.1);
  __CPROVER_assume(a + c > b + 0.1);
  __CPROVER_assume(b + c > a + 0.1);
  double s = (((a + b) + c) / 2.0);
  double res = sqrt((((s * (s - a)) * (s - b)) * (s - c)));
  __CPROVER_assert(0.29 <= res && res <= 35.1, "postcondition");
  return res;
}

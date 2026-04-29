#include <math.h>

double trianglesorted(double a, double c, double b) {
  __CPROVER_assume(1.0 <= a && a <= 9.0);
  __CPROVER_assume(1.0 <= b && b <= 9.0);
  __CPROVER_assume(1.0 <= c && c <= 9.0);
  __CPROVER_assume(a + b > c + 0.000001);
  __CPROVER_assume(a + c > b + 0.000001);
  __CPROVER_assume(b + c > a + 0.000001);
  __CPROVER_assume(a < c && b < c);
  double temp;
  if ((a < b)) {
    temp = (sqrt(((((c + (b + a)) * (a - (c - b))) * (a + (c - b))) * (c + (b - a)))) / 4.0);
  } else {
    temp = (sqrt(((((c + (a + b)) * (b - (c - a))) * (b + (c - a))) * (c + (a - b)))) / 4.0);
  }
  __CPROVER_assert(temp >= 0.0, "postcondition");
  return temp;
}

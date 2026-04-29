double sine(double x) {
  __CPROVER_assume(-1.57079632679 < x);
  __CPROVER_assume(x < 1.57079632679);
  double res = (((x - (((x * x) * x) / 6.0)) + (((((x * x) * x) * x) * x) / 120.0)) - (((((((x * x) * x) * x) * x) * x) * x) / 5040.0));
  __CPROVER_assert(-1.0 < res && res < 1.0, "postcondition");
  return res;
}

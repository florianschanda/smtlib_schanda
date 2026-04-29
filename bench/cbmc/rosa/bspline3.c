double bspline3(double u) {
  __CPROVER_assume(0.0 <= u && u <= 1.0);
  double res = (-((u * u) * u) / 6.0);
  __CPROVER_assert(-0.17 <= res && res <= 0.05, "postcondition");
  return res;
}

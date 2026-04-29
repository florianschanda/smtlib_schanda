double sineorder3(double x) {
  __CPROVER_assume(-2.0 < x && x < 2.0);
  double res = ((0.954929658551372 * x) - (0.12900613773279798 * ((x * x) * x)));
  __CPROVER_assert(-1.0 < res && res < 1.0, "postcondition");
}

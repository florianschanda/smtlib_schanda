double cav10(double x) {
  __CPROVER_assume(0.0 < x && x < 10.0);
  double temp;
  if ((((x * x) - x) >= 0.0)) {
    temp = (x / 10.0);
  } else {
    temp = ((x * x) + 2.0);
  }
  __CPROVER_assert(0.0 <= temp && temp <= 3.0, "postcondition");
  return temp;
}

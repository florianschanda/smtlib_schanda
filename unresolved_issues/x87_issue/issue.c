#include <stdio.h>

int main(int argc, char **argv)
{
  double x, y, r;

  /*
   * Double rounding (div in 15  bits, followed by conversion to 64
   * bits explains divergence. Using -mpc64 fixes this.
   */
  x = 0x1p+0;                    /* normal */
  y = 0x1.fffffffffffffp+511;    /* normal */
  r = x / y;                     /* normal */
  printf("correctly rounded result = 0x1.0000000000001p-512\n");
  printf("actual result            = %a\n", r);

  /*
   * Using
  x = 0x0.fffffffffffffp-1022;   /* subnormal */
  y = 0x1.8c0493f45169bp+0;      /* normal    */
  r = x / y;                     /* subnormal */
  printf("correctly rounded result = 0x0.a57ccb40cb71dp-1022\n");
  printf("actual result            = %a\n", r);

  return 0;
}

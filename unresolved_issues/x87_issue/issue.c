#include <stdio.h>

int main(int argc, char **argv)
{
  double x, y, r;

  x = 0x1p+0;
  y = 0x1.fffffffffffffp+511;
  r = x / y;
  printf("correctly rounded result = 0x1.0000000000001p-512\n");
  printf("actual result            = %a\n", r);

  x = 0x0.fffffffffffffp-1022;
  y = 0x1.8c0493f45169bp+0;
  r = x / y;
  printf("correctly rounded result = 0x0.a57ccb40cb71dp-1022\n");
  printf("actual result            = %a\n", r);

  return 0;
}

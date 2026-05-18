#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <fenv.h>

#if (WIDTH == 32)
typedef float fp;
typedef uint32_t bv;
#elif (WIDTH == 64)
typedef double fp;
typedef uint64_t bv;
#else
#error "no float width specified"
#endif

#include "common.h"

void set_rm(fp_rounding rm)
{
  int error;
  switch (rm) {
  case RNE:
    error = fesetround(FE_TONEAREST);
    break;
  case RNA:
    printf("rna unsupported\n");
    exit(2);
    break;
  case RTP:
    error = fesetround(FE_UPWARD);
    break;
  case RTN:
    error = fesetround(FE_DOWNWARD);
    break;
  case RTZ:
    error = fesetround(FE_TOWARDZERO);
    break;
  default:
    printf("logic error\n");
    exit(1);
  }
  if (error != 0) {
    printf("could not set rounding mode\n");
    exit(1);
  }
}

int main(int argc, char **argv)
{
  work_package wp;
  fp result;
  bv result_bv;

  parse_args(argc, argv, &wp);

  switch (wp.op) {
  case ADD:
    set_rm(wp.rm);
    result = wp.arg[0] + wp.arg[1];
    break;
  case MUL:
    set_rm(wp.rm);
    result = wp.arg[0] * wp.arg[1];
    break;
  default:
    printf("internal logic error\n");
    return 1;
  }

  memcpy(&result_bv, &result, WIDTH / 8);
  printf("%llx\n", (unsigned long long)result_bv);
  return 0;
}

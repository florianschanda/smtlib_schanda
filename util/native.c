#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <fenv.h>
#include <math.h>

#if (WIDTH == 32)
typedef float fp;
typedef uint8_t bv[4];
#define op(name) name##f
#elif (WIDTH == 64)
typedef double fp;
typedef uint8_t bv[8];
#define op(name) name
#elif (WIDTH == 80)
typedef long double fp;
typedef uint8_t bv[16];
#define op(name) name##l
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

  parse_args(argc, argv, &wp);

  switch (wp.op) {
  case ABS:
    result = op(fabs)(wp.arg[0]);
    break;
  case NEG:
    result = -wp.arg[0];
    break;
  case ADD:
    set_rm(wp.rm);
    result = wp.arg[0] + wp.arg[1];
    break;
  case SUB:
    set_rm(wp.rm);
    result = wp.arg[0] - wp.arg[1];
    break;
  case MUL:
    set_rm(wp.rm);
    result = wp.arg[0] * wp.arg[1];
    break;
  case DIV:
    set_rm(wp.rm);
    result = wp.arg[0] / wp.arg[1];
    break;
  case FMA:
    set_rm(wp.rm);
    result = op(fma)(wp.arg[0], wp.arg[1], wp.arg[2]);
    break;
  case SQRT:
    set_rm(wp.rm);
    result = op(sqrt)(wp.arg[0]);
    break;
  case REM:
    result = op(remainder)(wp.arg[0], wp.arg[1]);
    break;
  case ROUND_TO_INTEGRAL:
    if (wp.rm == RNA) {
      result = op(round)(wp.arg[0]);
    } else {
      set_rm(wp.rm);
      result = op(nearbyint)(wp.arg[0]);
    }
    break;
  case MIN:
    result = op(fmin)(wp.arg[0], wp.arg[1]);
    break;
  case MAX:
    result = op(fmax)(wp.arg[0], wp.arg[1]);
    break;
  default:
    printf("currently unsupported \n");
    return 2;
  }

  print_float_bv(result);
  return 0;
}

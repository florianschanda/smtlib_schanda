#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>

#include <softfloat.h>

#if (WIDTH == 16)
typedef float16_t fp;
typedef uint8_t bv[2];
#define op(name) f16_##name
#elif (WIDTH == 32)
typedef float32_t fp;
typedef uint8_t bv[4];
#define op(name) f32_##name
#elif (WIDTH == 64)
typedef float64_t fp;
typedef uint8_t bv[8];
#define op(name) f64_##name
#else
#error "no float width specified"
#endif

#include "common.h"

void set_rm(fp_rounding rm)
{
  switch (rm) {
  case RNE:
    softfloat_roundingMode = softfloat_round_near_even;
    break;
  case RNA:
    softfloat_roundingMode = softfloat_round_near_maxMag;
    break;
  case RTP:
    softfloat_roundingMode = softfloat_round_max;
    break;
  case RTN:
    softfloat_roundingMode = softfloat_round_min;
    break;
  case RTZ:
    softfloat_roundingMode = softfloat_round_minMag;
    break;
  default:
    printf("logic error\n");
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
    return 2;
  case NEG:
    return 2;
  case ADD:
    set_rm(wp.rm);
    result = op(add)(wp.arg[0], wp.arg[1]);
    break;
  case SUB:
    set_rm(wp.rm);
    result = op(sub)(wp.arg[0], wp.arg[1]);
    break;
  case MUL:
    set_rm(wp.rm);
    result = op(mul)(wp.arg[0], wp.arg[1]);
    break;
  case DIV:
    set_rm(wp.rm);
    result = op(div)(wp.arg[0], wp.arg[1]);
    break;
  case FMA:
    set_rm(wp.rm);
    result = op(mulAdd)(wp.arg[0], wp.arg[1], wp.arg[2]);
    break;
  case SQRT:
    set_rm(wp.rm);
    result = op(sqrt)(wp.arg[0]);
    break;
  case REM:
    result = op(rem)(wp.arg[0], wp.arg[1]);
    break;
  case ROUND_TO_INTEGRAL:
    set_rm(wp.rm);
    result = op(roundToInt)(wp.arg[0], softfloat_roundingMode, 0);
    break;
  case MIN:
    return 2;
  case MAX:
    return 2;
  default:
    printf("currently unsupported \n");
    return 2;
  }

  print_float_bv(result);
  return 0;
}

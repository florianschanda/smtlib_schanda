#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>

#include <softfloat.h>

#if (WIDTH == 16)
typedef float16_t fp;
typedef uint16_t bv;
#define op(name) f16_##name
#elif (WIDTH == 32)
typedef float32_t fp;
typedef uint32_t bv;
#define op(name) f32_##name
#elif (WIDTH == 64)
typedef float64_t fp;
typedef uint64_t bv;
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
  bv result_bv;

  parse_args(argc, argv, &wp);

  switch (wp.op) {
  case ADD:
    set_rm(wp.rm);
    result = op(add)(wp.arg[0], wp.arg[1]);
    break;
  case MUL:
    set_rm(wp.rm);
    result = op(mul)(wp.arg[0], wp.arg[1]);
    break;
  default:
    printf("internal logic error\n");
    return 1;
  }

  memcpy(&result_bv, &result, WIDTH / 8);
  printf("%llx\n", (unsigned long long)result_bv);
  return 0;
}

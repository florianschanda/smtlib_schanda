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
  fp_operation op;
  fp_rounding rm = RM_UNSPECIFIED;
  int requires_rm = 1;
  int arity;
  int arg_id;
  fp arg[3];
  fp result;

  if (argc <= 1) {
    printf("usage: op ...\n");
    return 1;
  }

  arg_id = 1;
  if (strcmp(argv[arg_id], "fp.add") == 0) {
    op = ADD;
    arity = 2;
  } else {
    printf("unknown op: %s\n", argv[1]);
    return 1;
  }

  if (argc <= 1 + requires_rm + arity) {
    printf("usage: %s", argv[1]);
    if (requires_rm) {
      printf(" rm");
    }
    for (int i=0; i<arity; ++i) {
      printf(" bv%u", WIDTH);
    }
    printf("\n");
    return 1;
  }

  if (requires_rm) {
    arg_id += 1;
    if (strcmp(argv[arg_id], "rne") == 0) {
      rm = RNE;
    } else if (strcmp(argv[arg_id], "rna") == 0) {
      rm = RNA;
    } else if (strcmp(argv[arg_id], "rtp") == 0) {
      rm = RTP;
    } else if (strcmp(argv[arg_id], "rtn") == 0) {
      rm = RTN;
    } else if (strcmp(argv[arg_id], "rtz") == 0) {
      rm = RTZ;
    } else {
      printf("unknown rounding mode: %s\n", argv[arg_id]);
      return 1;
    }
  }

  for (int a=0; a<arity; ++a) {
    arg_id += 1;
    errno = 0;
    unsigned long long tmp = strtoull(argv[arg_id], NULL, 16);
    if (errno == EINVAL) {
      printf("invalid value in bitvector argument %u\n", a + 1);
      return 1;
    } else if (errno == ERANGE) {
      printf("bitvector %u out of ull range\n", a + 1);
      return 1;
    } else if (WIDTH == 32 && tmp > 0xffffffff) {
      printf("bitvector %u out of 32-bit range\n", a + 1);
      return 1;
    } else if (WIDTH == 64 && tmp > 0xffffffffffffffff) {
      printf("bitvector %u out of 64-bit range\n", a + 1);
      return 1;
    }
    bv tmp_bv = (bv)tmp;
    memcpy(&arg[a], &tmp_bv, WIDTH / 8);
  }

  switch (op) {
  case ADD:
    set_rm(rm);
    result = op(add)(arg[0], arg[1]);
    break;
  default:
    printf("internal logic error\n");
    return 1;
  }

  bv result_bv;
  memcpy(&result_bv, &result, WIDTH / 8);
  printf("%llx\n", (unsigned long long)result_bv);
  return 0;
}

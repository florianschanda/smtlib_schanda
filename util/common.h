#include <stdlib.h>
#include <stdio.h>

#ifndef __COMMON_H__
#define __COMMON_H__

_Static_assert(sizeof(bv) == sizeof(fp),
	       "size mismatch between bv and float type");

typedef enum {
  ABS,
  NEG,
  ADD,
  SUB,
  MUL,
  DIV,
  FMA,
  SQRT,
  REM,
  ROUND_TO_INTEGRAL,
  MIN,
  MAX,
  LEQ,
  LT,
  GEQ,
  GT,
  EQ,
  IS_NORMAL,
  IS_SUBNORMAL,
  IS_ZERO,
  IS_INFINITE,
  IS_NAN,
  IS_NEGATIVE,
  IS_POSITIVE,

  IEEE_TO_FP,
  FP_TO_FP,
  REAL_TO_FP,
  SBV_TO_FP,
  UBV_TO_FP,

  FP_TO_UBV,
  FP_TO_SBV,
  FP_TO_REAL
} fp_operation;

typedef enum {
  RNE,
  RNA,
  RTP,
  RTN,
  RTZ,
  RM_UNSPECIFIED
} fp_rounding;

typedef struct {
  fp_operation op;
  fp_rounding  rm;
  fp arg[3];

  int arity;
  int requires_rm;
} work_package;

uint8_t parse_digit(char c)
{
  if (c >= '0' && c <= '9') {
    return c - '0';
  } else if (c >= 'a' && c <= 'f') {
    return c - 'a' + 10;
  } else {
    printf("invalid hex digit %c\n", c);
    exit(1);
  }
}

fp parse_hexfloat(char *s)
{
  bv float_bv;
  fp result;

  if (strlen(s) != sizeof(bv) * 2) {
    printf("incorrect input argument length\n");
    exit(1);
  }

  for (int i=0; i<sizeof(bv); ++i) {
    float_bv[sizeof(bv)-1-i] =
      (parse_digit(s[i*2]) << 4) + parse_digit(s[i*2 + 1]);
  }

  memcpy(&result, &float_bv, sizeof(bv));

  return result;
}

void print_float_bv(fp value)
{
  bv result_bv;
  memcpy(&result_bv, &value, sizeof(bv));
  for (int i=0; i<sizeof(bv); ++i) {
    printf("%02x", result_bv[sizeof(bv) - 1 - i]);
  }
  printf("\n");
}

void parse_args(int argc, char **argv, work_package *wp)
{
  int arg_id = 1;

  wp->rm          = RM_UNSPECIFIED;
  wp->arity       = 2;
  wp->requires_rm = 1;

  if (argc <= 1) {
    printf("usage: op ...\n");
    exit(1);
  }

  /* Parse operation */
  if (strcmp(argv[arg_id], "abs") == 0) {
    wp->op = ABS;
    wp->arity = 1;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "neg") == 0) {
    wp->op = NEG;
    wp->arity = 1;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "add") == 0) {
    wp->op = ADD;
  } else if (strcmp(argv[arg_id], "sub") == 0) {
    wp->op = SUB;
  } else if (strcmp(argv[arg_id], "mul") == 0) {
    wp->op = MUL;
  } else if (strcmp(argv[arg_id], "div") == 0) {
    wp->op = DIV;
  } else if (strcmp(argv[arg_id], "fma") == 0) {
    wp->op = FMA;
    wp->arity = 3;
  } else if (strcmp(argv[arg_id], "sqrt") == 0) {
    wp->op = SQRT;
    wp->arity = 1;
  } else if (strcmp(argv[arg_id], "rem") == 0) {
    wp->op = REM;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "round_to_integral") == 0) {
    wp->op = ROUND_TO_INTEGRAL;
    wp->arity = 1;
  } else if (strcmp(argv[arg_id], "min") == 0) {
    wp->op = MIN;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "max") == 0) {
    wp->op = MAX;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "leq") == 0) {
    wp->op = LEQ;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "lt") == 0) {
    wp->op = LT;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "geq") == 0) {
    wp->op = GEQ;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "gt") == 0) {
    wp->op = GT;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "eq") == 0) {
    wp->op = EQ;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "is_normal") == 0) {
    wp->op = IS_NORMAL;
    wp->arity = 1;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "is_subnormal") == 0) {
    wp->op = IS_SUBNORMAL;
    wp->arity = 1;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "is_zero") == 0) {
    wp->op = IS_ZERO;
    wp->arity = 1;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "is_infinite") == 0) {
    wp->op = IS_INFINITE;
    wp->arity = 1;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "is_nan") == 0) {
    wp->op = IS_NAN;
    wp->arity = 1;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "is_negative") == 0) {
    wp->op = IS_NEGATIVE;
    wp->arity = 1;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "is_positive") == 0) {
    wp->op = IS_POSITIVE;
    wp->arity = 1;
    wp->requires_rm = 0;
  } else if (strcmp(argv[arg_id], "ieee_to_fp") == 0) {
    wp->op = IEEE_TO_FP;
    printf("unsupported: %s\n", argv[arg_id]);
    exit(2);
  } else if (strcmp(argv[arg_id], "fp_to_fp") == 0) {
    wp->op = FP_TO_FP;
    printf("unsupported: %s\n", argv[arg_id]);
    exit(2);
  } else if (strcmp(argv[arg_id], "real_to_fp") == 0) {
    wp->op = REAL_TO_FP;
    printf("unsupported: %s\n", argv[arg_id]);
    exit(2);
  } else if (strcmp(argv[arg_id], "sbv_to_fp") == 0) {
    wp->op = SBV_TO_FP;
    printf("unsupported: %s\n", argv[arg_id]);
    exit(2);
  } else if (strcmp(argv[arg_id], "ubv_to_fp") == 0) {
    wp->op = UBV_TO_FP;
    printf("unsupported: %s\n", argv[arg_id]);
    exit(2);
  } else if (strcmp(argv[arg_id], "fp_to_ubv") == 0) {
    wp->op = FP_TO_UBV;
    printf("unsupported: %s\n", argv[arg_id]);
    exit(2);
  } else if (strcmp(argv[arg_id], "fp_to_sbv") == 0) {
    wp->op = FP_TO_SBV;
    printf("unsupported: %s\n", argv[arg_id]);
    exit(2);
  } else if (strcmp(argv[arg_id], "fp_to_real") == 0) {
    wp->op = FP_TO_REAL;
    printf("unsupported: %s\n", argv[arg_id]);
    exit(2);
  } else {
    printf("unknown op: %s\n", argv[arg_id]);
    exit(1);
  }

  /* Ensure correct number of parameters */
  if (argc <= 1 + wp->requires_rm + wp->arity) {
    printf("usage: %s", argv[1]);
    if (wp->requires_rm) {
      printf(" rm");
    }
    for (int i=0; i<wp->arity; ++i) {
      printf(" bv%u", WIDTH);
    }
    printf("\n");
    exit(1);
  }

  /* Parse RM */
  if (wp->requires_rm) {
    arg_id += 1;
    if (strcmp(argv[arg_id], "rne") == 0) {
      wp->rm = RNE;
    } else if (strcmp(argv[arg_id], "rna") == 0) {
      wp->rm = RNA;
    } else if (strcmp(argv[arg_id], "rtp") == 0) {
      wp->rm = RTP;
    } else if (strcmp(argv[arg_id], "rtn") == 0) {
      wp->rm = RTN;
    } else if (strcmp(argv[arg_id], "rtz") == 0) {
      wp->rm = RTZ;
    } else {
      printf("unknown rounding mode: %s\n", argv[arg_id]);
      exit(1);
    }
  }

  /* Parse float inputs (as bit-vectors) */
  for (int a=0; a<wp->arity; ++a) {
    arg_id += 1;
    wp->arg[a] = parse_hexfloat(argv[arg_id]);
  }
}

#endif

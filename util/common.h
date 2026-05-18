#include <stdlib.h>
#include <stdio.h>

#ifndef __COMMON_H__
#define __COMMON_H__

typedef enum {
  ADD,
  MUL
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
  if (strcmp(argv[arg_id], "fp.add") == 0) {
    wp->op = ADD;
  } else if (strcmp(argv[arg_id], "fp.mul") == 0) {
    wp->op = MUL;
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
    errno = 0;
    unsigned long long tmp = strtoull(argv[arg_id], NULL, 16);
    if (errno == EINVAL) {
      printf("invalid value in bitvector argument %u\n", a + 1);
      exit(1);
    } else if (errno == ERANGE) {
      printf("bitvector %u out of ull range\n", a + 1);
      exit(1);
    } else if (WIDTH == 16 && tmp > 0xffff) {
      printf("bitvector %u out of 16-bit range\n", a + 1);
      exit(1);
    } else if (WIDTH == 32 && tmp > 0xffffffff) {
      printf("bitvector %u out of 32-bit range\n", a + 1);
      exit(1);
    } else if (WIDTH == 64 && tmp > 0xffffffffffffffff) {
      printf("bitvector %u out of 64-bit range\n", a + 1);
      exit(1);
    }
    bv tmp_bv = (bv)tmp;
    memcpy(&wp->arg[a], &tmp_bv, WIDTH / 8);
  }
}

#endif

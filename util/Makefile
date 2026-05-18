BASE_FLAGS=-std=c11 -Wall -pedantic -O2
CORRECTNESS_FLAGS=-frounding-math -fsignaling-nans -ffp-contract=off -mfma -mno-fma4

SOFTFLOAT=SoftFloat-3e/build/Linux-x86_64-GCC/softfloat.a

all: limiter \
	native_x87_oracle_32 \
	native_x87_oracle_64 \
	native_sse_oracle_32 \
	native_sse_oracle_64 \
	softfloat_oracle_16 \
	softfloat_oracle_32 \
	softfloat_oracle_64

limiter: limiter.c
	$(CC) $(BASE_FLAGS) limiter.c -o limiter

native_sse_oracle_32: native.c common.h
	$(CC) $(BASE_FLAGS) $(CORRECTNESS_FLAGS) \
		-msse2 -mfpmath=sse \
		-DWIDTH=32 \
		native.c -o $@ \
		-lm

native_sse_oracle_64: native.c common.h
	$(CC) $(BASE_FLAGS) $(CORRECTNESS_FLAGS) \
		-msse2 -mfpmath=sse \
		-DWIDTH=64 \
		native.c -o $@ \
		-lm

native_x87_oracle_32: native.c common.h
	$(CC) $(BASE_FLAGS) $(CORRECTNESS_FLAGS) \
		-mfpmath=387 \
		-DWIDTH=32 \
		native.c -o $@ \
		-lm

native_x87_oracle_64: native.c common.h
	$(CC) $(BASE_FLAGS) $(CORRECTNESS_FLAGS) \
		-mfpmath=387 \
		-DWIDTH=64 \
		native.c -o $@ \
		-lm

softfloat_oracle_16: softfloat.c common.h $(SOFTFLOAT)
	$(CC) $(BASE_FLAGS) \
		-DWIDTH=16 \
		-ISoftFloat-3e/source/include \
		softfloat.c -o $@ \
		-LSoftFloat-3e/build/Linux-x86_64-GCC \
		-lm -l:softfloat.a

softfloat_oracle_32: softfloat.c common.h $(SOFTFLOAT)
	$(CC) $(BASE_FLAGS) \
		-DWIDTH=32 \
		-ISoftFloat-3e/source/include \
		softfloat.c -o $@ \
		-LSoftFloat-3e/build/Linux-x86_64-GCC \
		-lm -l:softfloat.a

softfloat_oracle_64: softfloat.c common.h $(SOFTFLOAT)
	$(CC) $(BASE_FLAGS) \
		-DWIDTH=64 \
		-ISoftFloat-3e/source/include \
		softfloat.c -o $@ \
		-LSoftFloat-3e/build/Linux-x86_64-GCC \
		-lm -l:softfloat.a

$(SOFTFLOAT):
	make -C SoftFloat-3e/build/Linux-x86_64-GCC -j16

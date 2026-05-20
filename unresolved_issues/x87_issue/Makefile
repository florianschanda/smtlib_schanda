FLAGS=-std=c11 -Wall -pedantic -O2 -frounding-math -fsignaling-nans -ffp-contract=off -mfma -mno-fma4 -s -ffloat-store -fexcess-precision=standard

all: sse 387_80 387_64
	./sse
	./387_80
	./387_64

387_64: issue.c
	gcc $(FLAGS) -mfpmath=387 -mpc64 $< -o $@

387_80: issue.c
	gcc $(FLAGS) -mfpmath=387 $< -o $@

sse: issue.c
	gcc $(FLAGS) -mfpmath=sse $< -o $@

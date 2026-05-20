FLAGS=-std=c11 -Wall -pedantic -frounding-math -fsignaling-nans -ffp-contract=off -mfma -mno-fma4 -s -ffloat-store -fexcess-precision=standard

all: a b c
	./a
	./b
	./c

a: issue.c
	gcc $(FLAGS) -mfpmath=387 -mpc64 issue.c -o a

b: issue.c
	gcc $(FLAGS) -mfpmath=387 issue.c -o b

c: issue.c
	gcc $(FLAGS) -mfpmath=sse issue.c -o c

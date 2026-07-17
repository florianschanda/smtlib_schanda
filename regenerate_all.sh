#!/bin/bash

# Warning: this script will take a very long time to run. This is why
# we check in the tests.

./fptg.py generate abs
./fptg.py generate add
./fptg.py generate div
./fptg.py generate fma
./fptg.py generate fp_to_fp
./fptg.py generate fp_to_sbv
./fptg.py generate fp_to_ubv
./fptg.py generate fp_to_real
./fptg.py generate ieee_to_fp
./fptg.py generate max
./fptg.py generate min
./fptg.py generate mul
./fptg.py generate rem
./fptg.py generate round_to_integral
./fptg.py generate sbv_to_fp
./fptg.py generate sqrt
./fptg.py generate sub
./fptg.py generate ubv_to_fp

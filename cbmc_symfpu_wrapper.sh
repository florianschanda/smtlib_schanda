#!/bin/bash

# This wrapper script make CBMC slot into the benchmarking framework here.
CBMC_BIN=$(ls cbmc_symfpu_2* | sort | tail -1)
exec ./${CBMC_BIN} $@ $(cat /dev/stdin)

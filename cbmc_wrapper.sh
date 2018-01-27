#!/bin/bash

# This wrapper script make CBMC slot into the benchmarking framework here.
exec cbmc $@ $(cat /dev/stdin)

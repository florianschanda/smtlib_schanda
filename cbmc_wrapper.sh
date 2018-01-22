#!/bin/bash

# This wrapper script make CBMC slot into the benchmarking framework here.

TMP=$(cbmc $(cat /dev/stdin))

if $(echo $TMP | grep -q "VERIFICATION SUCCESSFUL"); then
    echo "unsat"
elif $(echo $TMP | grep -q "VERIFICATION FAILED"); then
    echo "sat"
else
    echo $TMP
fi

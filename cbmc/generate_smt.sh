#!/bin/bash

for F in $(find demo -type f -name "*.c"); do
    CFILE=$(echo $F | sed -e "s|./|cbmc/|")
    FN=$(echo $(basename $F) | sed -e "s/.c//")
    DST=$(echo $F | sed -e "s/.c/.smt2/")
    cbmc $F --smt2 --fpa $F --function $FN --outfile ${DST}
    ../sort_spark_benchmarks.py --file=${DST}
    echo $CFILE "--function $FN" > ${DST}_cbmc
done

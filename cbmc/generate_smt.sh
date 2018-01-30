#!/bin/bash

CBMC_BIN=$(basename $(ls ../cbmc_2* | sort | tail -1))

# for F in $(find demo -type f -name "*.c"); do
#     CFILE=$(echo $F | sed -e "s|./|cbmc/|")
#     FN=$(echo $(basename $F) | sed -e "s/.c//")
#     DST=$(echo $F | sed -e "s/.c/.smt2/")
#     cbmc $F --smt2 --fpa $F --function $FN --outfile ${DST}
#     ../sort_spark_benchmarks.py --file=${DST}
#     echo $CFILE "--function $FN" > ${DST}_cbmc
# done

for F in $(find sv-comp cp2017 ariadne -type f -name "*.smt2_cbmc"); do
    echo "*** Processing" $F
    CBMC_ARGS=$(cat $F)
    DST=$(echo $F | sed -e "s/.smt2_cbmc/.smt2/")
    (cd .. && ./${CBMC_BIN} ${CBMC_ARGS} --smt2 --fpa --outfile cbmc/${DST} > /dev/null)
    ../sort_spark_benchmarks.py --file=${DST}
done

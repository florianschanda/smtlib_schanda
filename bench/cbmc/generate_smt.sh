#!/bin/bash

for F in $(find . -type f -name "*.smt2_cbmc"); do
    echo "*** Processing" $F
    CBMC_ARGS=$(cat $F)
    DST=$(echo $F | sed -e "s/.smt2_cbmc/.smt2/")
    (cd .. && cbmc ${CBMC_ARGS} --cvc5 --fpa --outfile cbmc/${DST} > /dev/null)
    sed -i -e s/ALL/QF_AUFBVFP/ ${DST}
done

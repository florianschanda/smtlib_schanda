(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00010000 #b01111010101101011110111)))
;; x should be Float32(0x083D5AF7 [Rational(12409591, 21778071482940061661655974875633165533184), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x3907AB5EE0000000 [Rational(12409591, 21778071482940061661655974875633165533184), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01110010000 #b0111101010110101111011100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

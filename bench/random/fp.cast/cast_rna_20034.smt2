(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00552BFC)))
;; x should be Float32(0x00552BFC [Rational(1395455, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x38054AFF00000000 [Rational(1395455, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01110000000 #b0101010010101111111100000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

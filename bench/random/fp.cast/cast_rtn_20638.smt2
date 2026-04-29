(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA1D7BAA)))
;; x should be Float32(0xCA1D7BAA [Rational(-5160405, 2), -2580202.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xC0143AF7540000000000000000000000 [Rational(-5160405, 2), -2580202.500000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000010100 #b0011101011110111010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

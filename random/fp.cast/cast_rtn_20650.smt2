(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01100000101110110010011)))
;; x should be Float32(0xCAB05D93 [Rational(-11558291, 2), -5779145.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xC01560BB260000000000000000000000 [Rational(-11558291, 2), -5779145.500000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000010101 #b0110000010111011001001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)

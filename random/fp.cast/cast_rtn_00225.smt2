(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01000100011110111101000)))
;; x should be Float32(0x80223DE8 [Rational(-280509, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xBF7F11EF400000000000000000000000 [Rational(-280509, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111101111111 #b0001000111101111010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)

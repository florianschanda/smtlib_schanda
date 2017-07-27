(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b01011110 #b00000001111010010101110)))
;; x should be Float32(0xAF00F4AE [Rational(-4225623, 36028797018963968), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xBFDE01E95C0000000000000000000000 [Rational(-4225623, 36028797018963968), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111111011110 #b0000000111101001010111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)

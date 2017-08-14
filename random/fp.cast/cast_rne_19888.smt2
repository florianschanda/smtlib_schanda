(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10101011101001000111010)))
;; x should be Float32(0x8055D23A [Rational(-2812189, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0xBF805748E80000000000000000000000 [Rational(-2812189, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111110000000 #b0101011101001000111010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b01001111 #b01001010111100001000010)))
;; x should be Float32(0xA7A57842 [Rational(-5422113, 1180591620717411303424), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xBFCF4AF0840000000000000000000000 [Rational(-5422113, 1180591620717411303424), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111111001111 #b0100101011110000100001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)

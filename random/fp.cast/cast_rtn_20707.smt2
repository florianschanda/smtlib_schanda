(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b01000110 #b00110110010010011000010)))
;; x should be Float32(0xA31B24C2 [Rational(-5083745, 604462909807314587353088), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xBFC63649840000000000000000000000 [Rational(-5083745, 604462909807314587353088), -0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xBFC63649840000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)

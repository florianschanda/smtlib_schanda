(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ NaN 8 24)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (fp #b0 #b11111110 #b11111111111111111111111)))
;; y should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11101011 #b10111000011010011010100)))
;; z should be Float32(0xF5DC34D4 [Rational(-558289448509523920497228652740608), -558289448509523920497228652740608.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)

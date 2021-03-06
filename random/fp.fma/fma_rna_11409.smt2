(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111111 #b00000000000000000000000)))
;; y should be Float32(-oo)

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b01110101011110101010000)))
;; z should be Float32(0x003ABD50 [Rational(240597, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (_ +oo 8 24)))
(check-sat)
(exit)

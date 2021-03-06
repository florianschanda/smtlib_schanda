(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01100100101111001010000)))
;; x should be Float32(0x80325E50 [Rational(-206309, 44601490397061246283071436545296723011960832), -0.000000])

(declare-const y Float32)
(assert (= y (_ -oo 8 24)))
;; y should be Float32(-oo)

(declare-const z Float32)
(assert (= z (fp #b0 #b11111110 #b11111111111111111111111)))
;; z should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b0 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)

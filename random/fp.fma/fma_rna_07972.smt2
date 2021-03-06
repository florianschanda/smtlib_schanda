(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b01001110011101001110010)))
;; y should be Float32(0x4A273A72 [Rational(5479737, 2), 2739868.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010101 #b00111111010101110010101)))
;; z should be Float32(0xCA9FAB95 [Rational(-10464149, 2), -5232074.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (_ +oo 8 24))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10110100 #b01111001000111000111010)))
;; y should be Float32(0xDA3C8E3A [Rational(-13268418845212672), -13268418845212672.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010101 #b10000001011101000110111)))
;; z should be Float32(0xCAC0BA37 [Rational(-12630583, 2), -6315291.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (_ +oo 8 24))))
(check-sat)
(exit)

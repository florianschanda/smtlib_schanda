(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11001111110101001100001)))
;; x should be Float32(0xCAE7EA61 [Rational(-15198817, 2), -7599408.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x234E4890)))
;; y should be Float32(0x234E4890 [Rational(844937, 75557863725914323419136), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111110 #b11111111111111111111111)))
;; z should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b0 #b11111110 #b11111111111111111111111))))
(check-sat)
(exit)

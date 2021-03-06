(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001101 #b10111110100011011100110)))
;; x should be Float32(0x46DF46E6 [Rational(7316339, 256), 28579.449219])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111110 #b11111111111111111111111)))
;; y should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.sub RNA x y)))
(assert (not (= result (fp #b0 #b11111110 #b11111111111111111111111))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000001)))
;; x should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010100 #b01111111101101001011110)))
;; y should be Float32(0xCA3FDA5E [Rational(-6286639, 2), -3143319.500000])

(declare-const result Float32)
(assert (= result (fp.min x y)))
(assert (not (= result (fp #b1 #b10010100 #b01111111101101001011110))))
(check-sat)
(exit)

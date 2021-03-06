(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010001 #b11000110010000111110000)))
;; x should be Float32(0x48E321F0 [Rational(930335, 2), 465167.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00000000000000000000001)))
;; y should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (not (= result (fp #b0 #b10010001 #b11000110010000111110000))))
(check-sat)
(exit)

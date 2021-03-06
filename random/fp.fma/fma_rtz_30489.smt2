(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10100100010000011110001)))
;; x should be Float32(0x005220F1 [Rational(5382385, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b11000010011010000110100)))
;; y should be Float32(0x00613434 [Rational(1592589, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111110 #b11111111111111111111111)))
;; z should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b1 #b11111110 #b11111111111111111111110))))
(check-sat)
(exit)

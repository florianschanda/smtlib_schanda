(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01111110111100000110011)))
;; x should be Float32(0x803F7833 [Rational(-4159539, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00000000000000000000000)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z (fp #b1 #b11000000 #b01111010101100001010100)))
;; z should be Float32(0xE03D5854 [Rational(-54574989720382603264), -54574989720382603264.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b1 #b11000000 #b01111010101100001010100))))
(check-sat)
(exit)

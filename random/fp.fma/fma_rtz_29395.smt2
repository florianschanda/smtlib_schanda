(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00010111000110000000111)))
;; y should be Float32(0x000B8C07 [Rational(756743, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b01111001111101100110111)))
;; z should be Float32(0x4ABCFB37 [Rational(12385079, 2), 6192539.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b0 #b10010101 #b01111001111101100110111))))
(check-sat)
(exit)

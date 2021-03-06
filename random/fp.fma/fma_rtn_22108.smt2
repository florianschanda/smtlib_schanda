(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11111111111111111111111)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b11111111111111111111111)))
;; y should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010011 #b11100001001010111000100)))
;; z should be Float32(0xC9F095C4 [Rational(-3941745, 2), -1970872.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b1 #b10010011 #b11100001001010111000100))))
(check-sat)
(exit)

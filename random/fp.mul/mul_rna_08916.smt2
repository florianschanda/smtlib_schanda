(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807FFFFF)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010011 #b11001100111100111010100)))
;; y should be Float32(0x49E679D4 [Rational(3776117, 2), 1888058.500000])

(declare-const result Float32)
(assert (= result (fp.mul RNA x y)))
(assert (not (= result ((_ to_fp 8 24) #x8AE679D2))))
(check-sat)
(exit)

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
(assert (= y (fp #b1 #b10010101 #b10001110001101010010011)))
;; y should be Float32(0xCAC71A93 [Rational(-13048467, 2), -6524233.500000])

(declare-const result Float32)
(assert (= result (fp.mul RTZ x y)))
(assert (not (= result ((_ to_fp 8 24) #x0BC71A91))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00111111100010001010111)))
;; x should be Float32(0x001FC457 [Rational(2081879, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 2602352239.0 892029807941224925661428730905934460239216640000.0))))
;; w should be Float32(0x001FC459 [Rational(2081881, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

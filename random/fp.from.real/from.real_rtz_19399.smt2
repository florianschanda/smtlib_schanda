(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0052F43F)))
;; x should be Float32(0x0052F43F [Rational(5436479, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 424729347.0 55751862996326557853839295681620903764951040000.0))))
;; w should be Float32(0x0052F477 [Rational(5436535, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

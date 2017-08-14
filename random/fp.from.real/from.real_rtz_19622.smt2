(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80728FF5)))
;; x should be Float32(0x80728FF5 [Rational(-7507957, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 37539797451.0 3568119231764899702645714923623737840956866560000.0)))))
;; w should be Float32(0x80728FF7 [Rational(-7507959, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)

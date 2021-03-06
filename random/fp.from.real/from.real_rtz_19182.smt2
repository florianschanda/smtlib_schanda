(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00000000)))
;; x should be Float32(+zero)

(declare-const r Real)
(assert (and (>= r 0.0) (< r (/ 1.0 713623846352979940529142984724747568191373312.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ r)))
(assert (not (= x w)))
(check-sat)
(exit)

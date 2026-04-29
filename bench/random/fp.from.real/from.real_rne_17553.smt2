(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 340282356779733661637539395458142568449.0))))
;; w should be Float32(-oo)

(assert (not (= x w)))
(check-sat)
(exit)

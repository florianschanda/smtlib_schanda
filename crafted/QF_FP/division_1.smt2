(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

;; Inspired by:
;;    https://www.cs.berkeley.edu/~wkahan/ieee754status/754story.html
;; dividing by oneself should not overflow

(define-const f1 Float32 ((_ to_fp 8 24) RNE 1.0))

(declare-const r RoundingMode)
(declare-const n Float32)
(assert (or (fp.isNormal n) (fp.isSubnormal n)))

(assert (not (= (fp.div r n n) f1)))

(check-sat)
(exit)

(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)

;; x >= 10.0
(assert (fp.geq x ((_ to_fp 8 24) RNE 10.0)))

;; x <= 1000.0
(assert (fp.leq x ((_ to_fp 8 24) RNE 1000.0)))

;; y = x + 2.0
(define-fun y () Float32
  (fp.add RNE x ((_ to_fp 8 24) RNE 2.0)))

;; goal: y >= 12.0 and
;;       isfinite(y)
(assert (not (and (fp.geq y ((_ to_fp 8 24) RNE 12.0))
                  (not (fp.isInfinite y)))))
(check-sat)

(exit)

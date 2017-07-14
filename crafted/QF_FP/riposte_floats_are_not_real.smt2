(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isZero f)
      (fp.isSubnormal f)))

(declare-const x Float32)

(define-fun f2 () Float32 ((_ to_fp 8 24) RNE 2.0))

;; isfinite(x)
(assert (isFinite x))

;; goal: E x => x * x = 2.0
(assert (fp.eq (fp.mul RNE x x) f2))
(check-sat)
(exit)

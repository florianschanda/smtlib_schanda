(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(define-fun f2  () Float32 ((_ to_fp 8 24) RNE 2.0))
(define-fun f5  () Float32 ((_ to_fp 8 24) RNE 5.0))
(define-fun f10 () Float32 ((_ to_fp 8 24) RNE 10.0))

(declare-const x Float32)

;; x in 5.0 .. 10.0
(assert (fp.leq f5 x f10))

;; y = x * 2.0 - 5.0
(define-fun y () Float32
  (fp.sub RNE (fp.mul RNE x f2) f5))

;; goal: y >= x and
;;       isfinite(y)
(assert (not (and (fp.geq y x)
                  (isFinite y))))
(check-sat)
(exit)

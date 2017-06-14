(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(define-fun f0    () Float32 ((_ to_fp 8 24) RNE 0.0))
(define-fun f0_1  () Float32 ((_ to_fp 8 24) RNE 0.1))
(define-fun f1    () Float32 ((_ to_fp 8 24) RNE 1.0))
(define-fun f1000 () Float32 ((_ to_fp 8 24) RNE 1000.0))

(declare-const x Float32)
(declare-const y Float32)

;; isfinite(x) and x >= 0
(assert (and (isFinite x) (fp.geq x f0)))

;; y > 0.1 and y < 1.0
(assert (fp.lt f0_1 y f1))

;; x / 1000 <= y
(assert (fp.leq (fp.div RNE x f1000) y))

;; res = x / y
(define-fun res () Float32 (fp.div RNE x y))

;; goal: res < 1000
(assert (not (fp.lt res f1000)))
(check-sat)
(exit)

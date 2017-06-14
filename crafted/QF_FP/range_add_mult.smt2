(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(define-fun f0   () Float32 ((_ to_fp 8 24) RNE 0.0))
(define-fun f1   () Float32 ((_ to_fp 8 24) RNE 1.0))
(define-fun f180 () Float32 ((_ to_fp 8 24) RNE 180.0))
(define-fun f360 () Float32 ((_ to_fp 8 24) RNE 360.0))

(declare-const x Float32)
(declare-const y Float32)
(declare-const z Float32)

;; x in 0.0 .. 180.0
;; y in -180 .. 0.0
;; z in 0.0 .. 1.0
(assert (and (fp.geq x f0)            (fp.leq x f180)))
(assert (and (fp.geq y (fp.neg f180)) (fp.leq y f0)))
(assert (and (fp.geq z f0)            (fp.leq z f1)))

;; x + y >= 0.0
(assert (fp.geq (fp.add RNE x y) f0))

;; res = x + (y * z)
(define-fun res () Float32
  (fp.add RNE x (fp.mul RNE y z)))

;; goal: res in 0.0 .. 360.0
(assert (not (and (fp.geq res f0)
                  (fp.leq res f360))))
(check-sat)
(exit)

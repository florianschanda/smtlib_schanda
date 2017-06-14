(set-logic QF_UFFP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(define-fun acc__first () Float32 ((_ to_fp 8 24) RNE (- 16.0)))
(define-fun acc__last  () Float32 ((_ to_fp 8 24) RNE    10.0))
(define-fun f0         () Float32 ((_ to_fp 8 24) RNE     0.0))
(define-fun inv__last  () Float32 ((_ to_fp 8 24) #x64B6F589))    ; 2.7E+22

(define-fun in_range ((f Float32)) Bool
  (and (fp.geq f acc__first)
       (fp.leq f acc__last)))

(declare-fun inv_sqrt (Float32) Float32)

(declare-const ax Float32)
(declare-const ay Float32)
(declare-const az Float32)

(assert (in_range ax))
(assert (in_range ay))
(assert (in_range az))

(define-fun t0 () Float32
  (fp.add RNE (fp.add RNE (fp.mul RNE ax ax)
                          (fp.mul RNE ay ay))
              (fp.mul RNE az az)))

;; overflow check for intermediate
(assert (not (isFinite t0)))
(check-sat)
(exit)

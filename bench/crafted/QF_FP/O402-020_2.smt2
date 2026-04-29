(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_UFFP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
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

;; pre and postcondition for inv_sqrt
(assert (isFinite (inv_sqrt t0)))
(assert (=> (fp.gt t0 f0)
            (and (fp.gt (inv_sqrt t0) f0)
                 (fp.lt (inv_sqrt t0) inv__last))))

(define-fun recip_norm () Float32
  (inv_sqrt t0))

(define-fun res () Float32
  (fp.mul RNE ax recip_norm))

;; final check
(assert (not (isFinite res)))
(check-sat)
(exit)

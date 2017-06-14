(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(define-fun float__first () Float32 ((_ to_fp 8 24) #xFF7FFFFF))
(define-fun float__last  () Float32 ((_ to_fp 8 24) #x7F7FFFFF))
(define-fun f0           () Float32 (_ +zero 8 24))

(declare-const desired  Float32)
(declare-const measured Float32)

(assert (isFinite desired))
(assert (isFinite measured))

;;  (if measured > 0 then desired >= float'first + measured
;;                   else desired <= float'last + measured)
(assert (ite (fp.gt measured f0)
             (fp.geq desired (fp.add RNE float__first measured))
             (fp.leq desired (fp.add RNE float__last measured))))

;; error = desired - measured
(define-fun error () Float32
  (fp.sub RNE desired measured))

;; goal: isfinite(error)
(assert (not (isFinite error)))

(check-sat)
(exit)

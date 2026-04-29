(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(define-fun float__first () Float32 ((_ to_fp 8 24) #xFF7FFFFF))
(define-fun float__last  () Float32 ((_ to_fp 8 24) #x7F7FFFFF))

(declare-const x Float32)

;; isfinite(x)
(assert (isFinite x))

;; res = long_float (x)
(define-fun res () (_ FloatingPoint 11 53)
  ((_ to_fp 11 53) RNE x))

;; goal: res in long_float (float'first) .. long_float (float'last)
(assert (not (and (fp.geq res ((_ to_fp 11 53) RNE float__first))
                  (fp.leq res ((_ to_fp 11 53) RNE float__last)))))
(check-sat)
(exit)

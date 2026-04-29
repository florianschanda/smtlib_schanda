(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

;; average of two floating point numbers...

(define-fun is_finite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isSubnormal f)
      (fp.isZero f)))

(define-const f2 Float32 ((_ to_fp 8 24) RNE     2.0))

;; a and b are finite
(declare-const a Float32)
(declare-const b Float32)

(assert (is_finite (fp.add RNE a b)))
(assert (fp.lt a b))

;; mid = (a + b) / 2.0
(define-const mid Float32
  (fp.div RNE (fp.add RNE a b) f2))

;; goal: a < mid b
(assert (not (and (fp.lt a mid)
                  (fp.lt mid b))))

(check-sat)
(exit)

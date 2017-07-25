(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

;; This is the example for the blog entry, but with a fixed traversal
;; condition

(define-fun is_spark_float ((f Float32)) Bool
  (not (or (fp.isNaN f)
           (fp.isInfinite f))))

(define-const float__last Float32 ((_ to_fp 8 24) #x7F7FFFFF))

(declare-const x Float32)
(declare-const y Float32)

;; the preconditions
(assert (is_spark_float x))
(assert (is_spark_float y))
(assert (fp.geq x (_ +zero 8 24)))
(assert (fp.geq y (_ +zero 8 24)))

;; traversal condition for the else branch
(assert (not (fp.eq y (_ +zero 8 24))))
(assert (not (fp.lt y (fp.div RNE x float__last))))
(assert (not (fp.isSubnormal y)))   ;; this is the fix

;; goal
(assert (not (is_spark_float (fp.div RNE x y))))
(check-sat)
(exit)

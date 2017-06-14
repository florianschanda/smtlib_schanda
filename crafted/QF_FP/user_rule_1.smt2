(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unknown)  ;; presumed unsat

;; these tests are inspired by user rules people have written

(define-fun is_finite ((f Float64)) Bool
  (or (fp.isZero f)
      (fp.isNormal f)
      (fp.isSubnormal f)))

(define-fun is_obvious ((f Float64)) Bool
  (or (fp.isZero f)
      (fp.isNormal f)))

(declare-const a Float64)
(declare-const b Float64)
(declare-const c Float64)
(define-const  d Float64 ((_ to_fp 11 53) RNE 9007199254740991.0))

(assert (is_obvious a))
(assert (is_obvious b))
(assert (is_obvious c))
(assert (is_obvious d))
(assert (is_finite (fp.mul RNE a b)))
(assert (is_finite (fp.mul RNE c d)))

(assert (fp.leq c ((_ to_fp 11 53) RNE 1055600.0)))

;; a * b <= c * d
(assert (fp.leq (fp.mul RNE a b)
                (fp.mul RNE c d)))

;; c > 0
(assert (fp.gt c (_ +zero 11 53)))

;; allegedly implies (a * b) / c <= d
(assert (not (fp.leq (fp.div RNE (fp.mul RNE a b) c)
                     d)))
(check-sat)
(exit)

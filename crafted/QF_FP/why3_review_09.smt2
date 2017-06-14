(set-logic QF_FP)
(set-info :source |Reviewing of Why3 FP theory by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun is_finite ((x Float32)) Bool
  (or (fp.isZero x) (fp.isNormal x) (fp.isSubnormal x)))
(define-const zeroF Float32 (_ +zero 8 24))

(define-fun same_sign ((x Float32) (y Float32)) Bool
  (or (and (fp.isPositive x) (fp.isPositive y))
      (and (fp.isNegative x) (fp.isNegative y))))

(define-fun diff_sign ((x Float32) (y Float32)) Bool
  (or (and (fp.isPositive x) (fp.isNegative y))
      (and (fp.isNegative x) (fp.isPositive y))))

(define-fun sign_zero_result ((m RoundingMode) (x Float32)) Bool
  (=> (fp.isZero x)
      (ite (= m RTN) (fp.isNegative x)
                     (fp.isPositive x))))

(declare-const m RoundingMode)

(declare-const x Float32)
(declare-const y Float32)
(define-const r Float32 (fp.add m x y))

(assert (not (and (or (fp.isNaN x)
                      (=> (fp.isNaN y) (fp.isNaN r)))
                  (=> (and (is_finite x) (fp.isInfinite y))
                      (and (fp.isInfinite r) (same_sign r y)))
                  (=> (and (fp.isInfinite x) (is_finite y))
                      (and (fp.isInfinite r) (same_sign r x)))
                  (=> (and (fp.isInfinite x) (fp.isInfinite y) (same_sign x y))
                      (and (fp.isInfinite r) (same_sign r x)))
                  (=> (and (fp.isInfinite x) (fp.isInfinite y) (diff_sign x y))
                      (fp.isNaN r))
                  (=> (and (is_finite x) (is_finite y))
                      (ite (same_sign x y)
                           (same_sign r x)
                           (sign_zero_result m r)))
             )))
(check-sat)
(exit)

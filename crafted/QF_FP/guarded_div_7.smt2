(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-fun isFinite ((x Float32)) Bool
  (or (fp.isZero x) (fp.isSubnormal x) (fp.isNormal x)))

(define-const float__last Float32
  (fp #b0 #b11111110 #b11111111111111111111111))

(declare-const numerator_0 Float32)
(declare-const denominator_0 Float32)

(assert (isFinite numerator_0))
(assert (isFinite denominator_0))

(define-const numerator_1 Float32
  (ite (fp.lt denominator_0 (_ +zero 8 24))
       (fp.neg numerator_0)
       numerator_0))

(define-const denominator_1 Float32
  (ite (fp.lt denominator_0 (_ +zero 8 24))
       (fp.neg denominator_0)
       denominator_0))

;; MATLAB helpfully does not clearly define sign(x) so we need to
;; instantiate a partial definition.
(declare-const sign_numerator_1 Float32)
(assert (=> (fp.gt numerator_1 (_ +zero 8 24))
            (fp.eq sign_numerator_1 ((_ to_fp 8 24) RNE 1.0))))
(assert (=> (fp.lt numerator_1 (_ +zero 8 24))
            (fp.eq sign_numerator_1 ((_ to_fp 8 24) RNE (- 1.0)))))
(assert (=> (fp.eq numerator_1 (_ +zero 8 24))
            (fp.isZero sign_numerator_1)))

(define-const overflow Bool
  (and (fp.lt denominator_1 ((_ to_fp 8 24) RNE 1.0))
       (fp.geq (fp.mul RNE numerator_1 sign_numerator_1)
               (fp.mul RNE denominator_1 float__last))))

(define-const result Float32 (fp.div RNE numerator_1 denominator_1))
(define-const actual_overflow Bool (not (isFinite result)))

(assert (not (=> actual_overflow overflow)))
(check-sat)
(exit)

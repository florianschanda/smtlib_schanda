(set-info :smt-lib-version 2.6)
(set-logic FP)
(set-info :source |
Generated by: Mathias Preiner
Generated on: 2019-03-22
Application: Verification of floating-point invertibility conditions.
Target solver: CVC4, Z3
Publications: "Invertibility Conditions for Floating-Point Formulas" by M. Brain, A. Niemetz, M. Preiner, A. Reynolds, C. Barrett, and C. Tinelli, CAV 2019.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "crafted")

(define-sort FP () (_ FloatingPoint 3 5))

(define-fun posMinSubnormal () FP (fp #b0 #b000 #b0001))
(define-fun negMinSubnormal () FP (fp #b1 #b000 #b0001))
(define-fun posMaxSubnormal () FP (fp #b0 #b000 #b1111))
(define-fun negMaxSubnormal () FP (fp #b1 #b000 #b1111))
(define-fun posMinNormal () FP (fp #b0 #b001 #b0000))
(define-fun negMinNormal () FP (fp #b1 #b001 #b0000))
(define-fun posMaxNormal () FP (fp #b0 #b110 #b1111))
(define-fun negMaxNormal () FP (fp #b1 #b110 #b1111))
(define-fun posConstTwo () FP (fp #b0 #b100 #b0000))
(define-fun R () RoundingMode RTN)

(declare-const t FP)

(define-fun IC ((t FP)) Bool (fp.eq t t))

(assert
 (distinct
  (IC t)
  (exists ((x FP)) (fp.geq (fp.abs x) t))
 )
)

(check-sat)
(exit)

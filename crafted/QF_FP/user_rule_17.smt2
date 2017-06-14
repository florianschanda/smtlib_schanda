(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

;; The distilled essence of user_rule_16

;; This is quite hard: mathsat takes 171 minutes, z3 takes 613 minutes.

(declare-const a Float32)
(define-const  b Float32 (fp.mul RNE a a))
(define-const  c Float32 (fp.sqrt RNE b))

(assert (and (fp.isPositive a)
             (fp.leq a ((_ to_fp 8 24) RNE 7800.0))))
(assert (not (fp.isSubnormal a)))

;; This is necessary, if b enters the subnormals then the conclusion is no
;; longer valid. There are 47,490,957 models for this (or about 1.1% of all
;; floating point values).
(assert (not (fp.isSubnormal b)))

;; goal: sqrt(a*a) <= a
(assert (not (fp.leq c a)))
(check-sat)
(exit)

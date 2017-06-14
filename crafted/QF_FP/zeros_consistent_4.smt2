(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

; converting zero always produces +0

(declare-const rm1 RoundingMode)
(define-const a Float32 ((_ to_fp 8 24) rm1 (_ bv0 32)))

(assert (not (fp.isPositive a)))

(check-sat)
(exit)

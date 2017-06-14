(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

; converting zero is consistent

(declare-const rm1 RoundingMode)
(declare-const rm2 RoundingMode)

(define-const a Float32 ((_ to_fp 8 24) rm1 (_ bv0 32)))
(define-const b Float32 ((_ to_fp 8 24) rm2 (_ bv0 32)))

(assert (distinct a b))

(check-sat)
(exit)

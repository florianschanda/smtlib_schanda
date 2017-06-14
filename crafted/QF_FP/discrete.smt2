(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-const a Float32 ((_ to_fp 8 24) RNE 16777216.0))
(define-const b Float32 ((_ to_fp 8 24) RNE 16777218.0))

(declare-const c Float32)

(assert (fp.lt a c b))

(check-sat)
(exit)

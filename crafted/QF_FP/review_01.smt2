(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const a Float32)
(define-const b Float64 ((_ to_fp 11 53) RNE a))
(define-const c Float32 ((_ to_fp 8 24) RNE b))

(assert (distinct a c))
(check-sat)
(exit)

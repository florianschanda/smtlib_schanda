(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
;(set-info :status unsat)

(declare-const f Float32)
(declare-const g Float32)

(define-const x Float32 (fp.mul RNE f (fp.neg g)))
(define-const y Float32 (fp.neg (fp.mul RNE f g)))

(assert (distinct x y))
(check-sat)
(exit)

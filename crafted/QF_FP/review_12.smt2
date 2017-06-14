(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const f Float32)
(define-const one Float32 ((_ to_fp 8 24) RNE 1.0))

(assert (distinct f
                  (fp.mul RNE f one)))
(check-sat)
(exit)

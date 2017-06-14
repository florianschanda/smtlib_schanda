(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const f Float32)

(define-const minus_one Float32 ((_ to_fp 8 24) RNE (- 1.0)))

(assert (distinct (fp.neg f)
                  (fp.mul RNE f minus_one)))
(check-sat)
(exit)

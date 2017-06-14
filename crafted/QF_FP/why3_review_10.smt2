(set-logic QF_FP)
(set-info :source |Reviewing of Why3 FP theory by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)
(declare-const y Float32)

(assert (not (or (fp.eq (fp.min x y) (fp.min y x))
                 (fp.isNaN x)
                 (fp.isNaN y))))
(check-sat)
(exit)

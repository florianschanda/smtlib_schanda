(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)
(declare-const y Float32)

(assert (fp.leq x y))

(assert (not (fp.eq (fp.min x y) x)))

(check-sat)
(exit)

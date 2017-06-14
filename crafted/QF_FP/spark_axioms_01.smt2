(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |SPARK float axiomatisation review by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)
(declare-const y Float32)

(assert (fp.leq y x))
(assert (not (fp.eq (fp.min x y) y)))

(check-sat)
(get-value (x y))
(get-value ((fp.min x y)))
(exit)

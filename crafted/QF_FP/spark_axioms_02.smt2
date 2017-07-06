(set-logic QF_FP)
(set-info :source |SPARK float axiomatisation review by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)
(declare-const y Float32)
(declare-const z Float32)

(assert (not (= (fp.min (fp.min x y) z)
                (fp.min x (fp.min y z)))))

(check-sat)
(exit)

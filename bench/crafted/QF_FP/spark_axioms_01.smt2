(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK float axiomatisation review by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)
(declare-const y Float32)

(assert (fp.leq y x))
(assert (not (fp.eq (fp.min x y) y)))

(check-sat)
(exit)

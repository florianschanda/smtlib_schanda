(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Reviewing of Why3 FP theory by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)

(assert (fp.isNegative (fp.abs x)))
(check-sat)
(exit)

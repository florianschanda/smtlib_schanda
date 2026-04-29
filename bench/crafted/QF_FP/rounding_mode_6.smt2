(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Testcases for CVC4 by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

;;  should be unsat (there are only 5 rounding modes)

(declare-const r1 RoundingMode)
(declare-const r2 RoundingMode)
(declare-const r3 RoundingMode)
(declare-const r4 RoundingMode)
(declare-const r5 RoundingMode)
(declare-const r6 RoundingMode)

(assert (distinct r1 r2 r3 r4 r5 r6))
(check-sat)
(exit)

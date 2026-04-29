(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Testcases for CVC4 by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

;;  should be obviously sat

(declare-const r RoundingMode)
(assert (distinct r RNE))

(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const f Float32)

(assert (fp.isNegative (fp.sqrt RNE f)))
(assert (not (fp.isZero (fp.sqrt RNE f))))
(check-sat)
(exit)

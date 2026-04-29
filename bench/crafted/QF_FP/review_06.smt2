(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const f Float32)
(declare-const g Float32)

(assert (not (fp.isInfinite f)))
(assert (not (fp.isInfinite g)))

(assert (distinct (fp.eq f g)
                  (fp.isZero (fp.sub RNE f g))))
(check-sat)
(exit)

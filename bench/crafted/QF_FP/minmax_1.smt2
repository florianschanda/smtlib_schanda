(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)
(declare-const y Float32)

(assert (fp.isZero x))
(assert (fp.isZero y))

; this one should have no model
(assert (not (fp.eq (fp.min x y)
                    (fp.max y x))))
(check-sat)
(exit)

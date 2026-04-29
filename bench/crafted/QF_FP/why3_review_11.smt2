(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Reviewing of Why3 FP theory by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(declare-const x Float32)
(declare-const y Float32)

; model is +0 and -0
(assert (not (or (= (fp.min x y) (fp.min y x))
                 (fp.isNaN x)
                 (fp.isNaN y))))
(check-sat)
(exit)

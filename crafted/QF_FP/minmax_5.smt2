(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(declare-const x Float32)
(declare-const y Float32)

(assert (fp.isZero x))
(assert (fp.isZero y))
(assert (distinct x y))

;; this should be sat if max returns the first argument, and min the second
;;    min (x, y) -> x
;;    max (x, y) -> y
(assert (not (= (fp.min x y)
                (fp.max x y))))
(check-sat)
(exit)

(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(declare-const x Float32)
(declare-const y Float32)

(assert (fp.isZero x))
(assert (fp.isZero y))
(assert (distinct x y))

;; this should be sat if min and max always the first and second argument
;; respectively.
;;    min (x, y) -> x
;;    max (y, x) -> x
(assert (= (fp.min x y)
           (fp.max y x)))
(check-sat)
(exit)

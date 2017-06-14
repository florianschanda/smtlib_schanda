(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

;; Theorem 19 (p168) of the Handbook of Floating-Point Arithmetic: "In any
;; radix, the square root of a floating-point number cannot be the exact
;; midpoint between two consecutive floating-point numbers."
;;
;; Hence, using RNE or RNA should not matter.

(declare-const x Float32)

(assert (not (= (fp.sqrt RNE x)
                (fp.sqrt RNA x))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

;; verification of axioms truncate_is_finite, ceil_is_finite,
;; floor_is_finite, nearbyInt_is_finite

(define-fun is_finite ((x Float32)) Bool (or (fp.isZero x)
                                             (fp.isNormal x)
                                             (fp.isSubnormal x)))

(declare-const x Float32)
(declare-const r RoundingMode)

(assert (is_finite x))

(assert (not (is_finite (fp.roundToIntegral r x))))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Florian Schanda, handcrafted test to check CVC4 implementation|)
(set-info :category crafted)
(set-info :status unsat)

;; A second RTI, no matter the rounding mode, should not change the result.

(declare-const r1 RoundingMode)
(declare-const r2 RoundingMode)

(declare-const x Float32)

(define-const y Float32 (fp.roundToIntegral r1 x))
(define-const z Float32 (fp.roundToIntegral r2 y))

(assert (not (= y z)))
(check-sat)
(exit)

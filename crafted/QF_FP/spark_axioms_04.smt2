(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK float axiomatisation review by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

;; verification of ceil
(declare-const x Float32)
(assert (fp.isZero x))

(define-const c Float32 (fp.roundToIntegral RTP x))

(assert (not (= (fp.isPositive x)
                (fp.isPositive c))))

(check-sat)
(exit)

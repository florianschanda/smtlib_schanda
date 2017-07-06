(set-logic QF_FP)
(set-info :source |SPARK float axiomatisation review by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
;;(set-info :status )

;; verification of ceil
(declare-const x Float32)
(assert (fp.isZero x))

(define-const c Float32 (fp.roundToIntegral RTP x))

(assert (not (= (fp.isPositive x)
                (fp.isPositive c))))

(check-sat)
(exit)

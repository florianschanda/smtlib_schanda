(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

;; verification of axiom RNA_up_tie

(declare-const x Float32)

(assert (fp.eq (fp.sub RNE (fp.roundToIntegral RTP x) x)
               (fp.sub RNE x (fp.roundToIntegral RTN x))))


(assert (not (=> (fp.isPositive x)
                 (= (fp.roundToIntegral RNA x)
                    (fp.roundToIntegral RTP x)))))

(check-sat)
(exit)

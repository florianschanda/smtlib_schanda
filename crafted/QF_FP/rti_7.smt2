(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

;; verification of axiom RNA_down_tie:

(declare-const x Float32)

(assert (fp.eq (fp.sub RNE x (fp.roundToIntegral RTN x))
               (fp.sub RNE (fp.roundToIntegral RTP x) x)))

(assert (not (=> (fp.isNegative x)
                 (= (fp.roundToIntegral RNA x)
                    (fp.roundToIntegral RTN x)))))

(check-sat)
(exit)

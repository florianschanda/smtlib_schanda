(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(declare-const x Float32)

(assert (not (fp.leq x (fp.roundToIntegral RTP x))))

(check-sat)
(exit)

(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun is_integral ((x Float32)) Bool (fp.eq x (fp.roundToIntegral RNE x)))

(declare-const x Float32)
(declare-const y Float32)

(assert (fp.leq x y))
(assert (is_integral y))

(assert (not (fp.leq (fp.roundToIntegral RTP x) y)))

(check-sat)
(exit)

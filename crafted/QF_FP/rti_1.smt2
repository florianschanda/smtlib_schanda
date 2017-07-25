(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

; ceil === roundToIntegral RTP

(declare-const x Float32)
(define-const y Float32 (fp.roundToIntegral RTP x))

(assert (not (or (fp.isInfinite x)
                 (fp.isNaN x))))

(assert (not (fp.leq x y)))
(check-sat)
(exit)

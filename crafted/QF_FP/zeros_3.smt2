(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const a Float32)
(assert (fp.isZero a))
(assert (fp.isNegative a))

(define-const b Float32 (fp.add RNE a a))

(assert (not (fp.isNegative b)))
(check-sat)
(exit)

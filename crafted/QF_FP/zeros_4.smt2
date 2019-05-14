(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const a Float32)
(assert (fp.isInfinite a))

(declare-const b Float32)
(assert (fp.isZero b))

(declare-const rm RoundingMode)

(assert (not (fp.isNaN (fp.mul rm a b))))
(check-sat)
(exit)

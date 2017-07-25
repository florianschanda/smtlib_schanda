(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const a Float32)
(declare-const b Float32)

(assert (or (fp.isZero a) (fp.isNormal a) (fp.isSubnormal a)))
(assert (or (fp.isZero b) (fp.isNormal b) (fp.isSubnormal b)))

(assert (fp.geq b ((_ to_fp 8 24) RNE 1.0)))
(assert (fp.leq a b))

(assert (not (fp.leq (fp.div RNE a b)
                     ((_ to_fp 8 24) RNE 1.0))))
(check-sat)
(exit)

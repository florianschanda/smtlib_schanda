(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const a Float32)
(declare-const b Float32)

(assert (or (fp.isZero a) (fp.isNormal a) (fp.isSubnormal a)))
(assert (or (fp.isZero b) (fp.isNormal b) (fp.isSubnormal b)))

(assert (fp.geq b ((_ to_fp 8 24) RNE 1.0)))
(assert (fp.geq a (fp.neg b)))

(assert (not (fp.geq (fp.div RNE a b)
                     ((_ to_fp 8 24) RNE (- 1.0)))))
(check-sat)
(exit)

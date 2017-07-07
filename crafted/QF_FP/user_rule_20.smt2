(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const a Float32)
(declare-const b Float32)
(declare-const c Float32)

(declare-const zero Float32)

(assert (or (fp.isZero a) (fp.isNormal a) (fp.isSubnormal a)))
(assert (or (fp.isZero b) (fp.isNormal b) (fp.isSubnormal b)))
(assert (or (fp.isZero c) (fp.isNormal c) (fp.isSubnormal c)))
(assert (fp.isZero zero))

(assert (or (and (fp.gt b zero)
                 (fp.gt a (fp.mul RNE (fp.neg c) b))
                 (fp.lt a (fp.mul RNE c b)))
            (and (fp.lt b zero)
                 (fp.gt a (fp.mul RNE c b))
                 (fp.lt a (fp.mul RNE (fp.neg c) b)))))

(assert (not (fp.leq (fp.div RNE a b) c)))
(check-sat)
(exit)

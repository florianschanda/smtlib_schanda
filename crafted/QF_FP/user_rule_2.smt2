(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun pre ((f Float32)) Bool
  (and (or (fp.isZero f) (fp.isNormal f) (fp.isSubnormal f))
       (fp.geq f (_ +zero 8 24))))

(declare-const x Float32)
(declare-const y Float32)
(declare-const z Float32)

(assert (pre x))
(assert (pre y))
(assert (pre z))

(assert (not (fp.leq (fp.neg (fp.mul RNE x y)) z)))
(check-sat)
(exit)

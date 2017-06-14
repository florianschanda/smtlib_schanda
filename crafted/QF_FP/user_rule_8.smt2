(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun finite ((f Float32)) Bool
  (or (fp.isZero f) (fp.isNormal f) (fp.isSubnormal f)))

(define-const x Float32 ((_ to_fp 8 24) RNE 5800.0))

(declare-const a Float32)
(declare-const b Float32)
(declare-const c Float32)

(assert (finite a))
(assert (finite b))
(assert (finite c))

(assert (fp.lt (fp.mul RNE (fp.abs a) (fp.abs c))
               (fp.mul RNE x (fp.abs b))))

(assert (not (not (fp.isZero b))))
(check-sat)
(exit)

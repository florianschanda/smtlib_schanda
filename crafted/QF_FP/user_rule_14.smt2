(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun finite ((f Float32)) Bool
  (or (fp.isZero f) (fp.isNormal f)))

(define-const one Float32 ((_ to_fp 8 24) RNE 1.0))

(declare-const d1 Float32)
(declare-const d0 Float32)
(declare-const r Float32)
(declare-const x Float32)

(assert (finite d1))
(assert (finite d0))
(assert (finite r))
(assert (finite x))

(assert (fp.gt d1 d0))
(assert (fp.leq (_ +zero 8 24) r one))
(assert (fp.geq d0 (_ +zero 8 24)))
(assert (fp.leq d1 x))

(assert (not (fp.leq (fp.sub RNE d1 (fp.mul RNE r (fp.sub RNE d1 d0)))
                     x)))
(check-sat)
(exit)

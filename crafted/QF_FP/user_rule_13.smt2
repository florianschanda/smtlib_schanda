(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-fun finite ((f Float32)) Bool
  (or (fp.isZero f) (fp.isNormal f) (fp.isSubnormal f)))

(define-const one Float32 ((_ to_fp 8 24) RNE 1.0))

(declare-const d1 Float32)
(declare-const d0 Float32)
(declare-const r Float32)

(assert (finite d1))
(assert (finite d0))
(assert (finite r))

(assert (fp.gt d1 d0))
(assert (and (fp.leq (_ +zero 8 24) r)
             (fp.leq r one)))
(assert (fp.geq d0 (_ +zero 8 24)))

(assert (not (fp.geq (fp.sub RNE d1 (fp.mul RNE r (fp.sub RNE d1 d0)))
                     (_ +zero 8 24))))
(check-sat)
(exit)

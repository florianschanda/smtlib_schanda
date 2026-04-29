(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(define-fun finite ((f Float32)) Bool
  (or (fp.isZero f) (fp.isNormal f) (fp.isSubnormal f)))

(declare-const a Float32)
(declare-const b Float32)
(declare-const c Float32)
(declare-const d Float32)

(assert (finite a))
(assert (finite b))
(assert (finite c))
(assert (finite d))

(assert (fp.geq a (_ +zero 8 24)))
(assert (fp.geq b (_ +zero 8 24)))

(assert (not (fp.geq (fp.add RNE (fp.mul RNE (fp.mul RNE c c) a)
                                 (fp.mul RNE (fp.mul RNE d d) b))
                     (_ +zero 8 24))))
(check-sat)
(exit)

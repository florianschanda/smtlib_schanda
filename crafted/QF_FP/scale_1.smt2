(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda and Martin Brain|)
(set-info :category crafted)
(set-info :status sat)

(define-fun is_finite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isZero f)
      (fp.isSubnormal f)))

(declare-const a Float32)
(assert (is_finite a))
(assert (fp.isPositive a))

(define-const scale Float32 ((_ to_fp 8 24) #x3f400000)) ; .75

(assert (not (fp.lt (fp.mul RNE a scale) a)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isZero f)
      (fp.isSubnormal f)))

(declare-const x Float32)
(assert (isFinite x))

(declare-const y Float32)
(assert (isFinite y))
(assert (not (fp.isZero y)))

(define-const a Float32 (fp.div RNE x y))
(define-const b Float32 (fp.mul RNE a y))

(assert (not (fp.eq x b)))
(check-sat)
(exit)

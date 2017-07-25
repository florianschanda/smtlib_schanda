(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-fun in_type ((f Float32)) Bool
  (fp.leq (fp.neg ((_ to_fp 8 24) RNE 7800.0))
          f
          ((_ to_fp 8 24) RNE 7800.0)))

(declare-const x Float32)
(declare-const y Float32)

(assert (in_type x))
(assert (in_type y))

(assert (fp.gt x (fp.abs y)))

(define-const res Float32
  (fp.sub RNE (fp.mul RNE x x) (fp.mul RNE y y)))

(assert (not (fp.geq res (_ +zero 8 24))))
(check-sat)
(exit)

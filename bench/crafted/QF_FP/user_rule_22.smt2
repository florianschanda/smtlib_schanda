(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-fun fp.isFinite32 ((x Float32)) Bool
  (not (or (fp.isInfinite x) (fp.isNaN x))))

(declare-const a Float32)
(assert (and (fp.isFinite32 a)
             (fp.geq a (_ +zero 8 24))))

(declare-const b Float32)
(assert (and (fp.isFinite32 b)
             (fp.geq b (_ +zero 8 24))))

(assert (fp.lt a b))

(assert (not (fp.lt (_ +zero 8 24)
                    (fp.sub RNE b a))))
(check-sat)
(exit)

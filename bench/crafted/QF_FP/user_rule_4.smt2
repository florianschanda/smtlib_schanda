(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-fun finite ((f Float32)) Bool
  (or (fp.isZero f) (fp.isNormal f) (fp.isSubnormal f)))

(define-const one Float32 ((_ to_fp 8 24) RNE 1.0))

(declare-const x Float32)
(declare-const y Float32)

(assert (finite x))
(assert (finite y))
(assert (fp.leq x y))
(assert (fp.gt y (_ +zero 8 24)))

(assert (not (fp.leq (fp.div RNE x y) one)))
(check-sat)
(exit)

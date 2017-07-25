(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Reviewing of Why3 FP theory by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-fun same_sign ((x Float32) (y Float32)) Bool
  (or (and (fp.isPositive x) (fp.isPositive y))
      (and (fp.isNegative x) (fp.isNegative y))))

(define-fun diff_sign ((x Float32) (y Float32)) Bool
  (or (and (fp.isPositive x) (fp.isNegative y))
      (and (fp.isNegative x) (fp.isPositive y))))

(declare-const x Float32)
(declare-const y Float32)
(declare-const z Float32)

(assert (diff_sign x y))
(assert (diff_sign y z))

(assert (not (same_sign x z)))
(check-sat)
(exit)

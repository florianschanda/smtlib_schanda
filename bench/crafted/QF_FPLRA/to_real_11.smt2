(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPLRA)
(set-info :source |Testcases for CVC4 by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(declare-const x Float32)
(assert (or (fp.isSubnormal x) (fp.isNormal x) (fp.isInfinite x)))

(declare-const y Float32)
(assert (or (fp.isSubnormal y) (fp.isNormal y)))

(assert (= (fp.to_real x)
           (fp.to_real y)))

;; x = inf, y = anything

(assert (distinct x y))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPLRA)
(set-info :source |Testcases for CVC4 by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)
(assert (or (fp.isSubnormal x) (fp.isNormal x)))

(declare-const y Float32)
(assert (or (fp.isSubnormal y) (fp.isNormal y)))

(assert (= (fp.to_real x)
           (fp.to_real y)))

;; two (non-stupid) floats that convert to the same real should imply the
;; floats are the same

(assert (distinct x y))
(check-sat)
(exit)

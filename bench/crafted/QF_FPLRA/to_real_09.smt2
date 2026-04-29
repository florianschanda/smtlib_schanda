(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPLRA)
(set-info :source |Testcases for CVC4 by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(declare-const x Float32)
(declare-const y Float32)

(assert (= (fp.to_real x)
           (fp.to_real y)))

;; obvious solution: -0, +0

(assert (distinct x y))
(check-sat)
(exit)

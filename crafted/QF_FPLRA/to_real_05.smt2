(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPLRA)
(set-info :source |Testcases for CVC4 by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(declare-const x Float32)
(declare-const y Float32)

(assert (fp.isNaN x))
(assert (fp.isZero y))

;;  nan could map to zero

(assert (= (fp.to_real x) (fp.to_real y)))
(check-sat)
(exit)

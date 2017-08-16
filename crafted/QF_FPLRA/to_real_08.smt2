(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPLRA)
(set-info :source |Testcases for CVC4 by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const r RoundingMode)

(declare-const x Float32)
(assert (or (fp.isSubnormal x) (fp.isNormal x)))

(define-const y Real (fp.to_real x))
(define-const z Float32 ((_ to_fp 8 24) r y))

;; should be OK

(assert (not (= x z)))
(check-sat)
(exit)

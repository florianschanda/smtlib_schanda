(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FPLRA)
(set-info :source |Testcases for CVC4 by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const r Real)
(declare-const m RoundingMode)

(define-const x Float32 ((_ to_fp 8 24) m r))

;; converting a real can never produce a NaN
(assert (fp.isNaN x))
(check-sat)
(exit)

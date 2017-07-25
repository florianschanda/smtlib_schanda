(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

;; min always returns *one* of the arguments

(declare-const x Float32)
(declare-const y Float32)

(define-const m Float32 (fp.min x y))

(assert (not (or (= m x) (= m y))))
(check-sat)
(exit)

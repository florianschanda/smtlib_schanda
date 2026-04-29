(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(declare-const f Float32)
(declare-const g Float32)

(define-const a Bool (fp.eq f (fp.neg f)))
(define-const b Bool (fp.eq g (fp.neg g)))
(define-const s Bool (= f g))

(assert (not (and (not s)
                  a
                  b)))
(check-sat)
(exit)

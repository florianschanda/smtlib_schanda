(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
;(set-info :status unsat)

(declare-const f Float32)
(declare-const g Float32)

(assert (not (fp.isInfinite f)))
(assert (not (fp.isInfinite g)))

(define-const x Bool (fp.eq f g))
(define-const y Bool (fp.eq (fp.sub RNE f g) (_ +zero 8 24)))

(assert (distinct x y))
(check-sat)
(exit)

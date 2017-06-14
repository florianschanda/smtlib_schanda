(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
;(set-info :status unsat)

(declare-const f Float32)
(declare-const g Float32)

(define-const one Float32 ((_ to_fp 8 24) RTN (- 1.0)))

(define-const x Float32 (fp.fma RTN f one g))
(define-const y Float32 (fp.sub RTN g f))

(assert (distinct x y))
(check-sat)
(get-value (f g x y))
(exit)

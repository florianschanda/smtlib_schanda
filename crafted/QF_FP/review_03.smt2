(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const f Float32)
(declare-const g Float32)

(define-const one Float32 ((_ to_fp 8 24) RNE 1.0))

(define-const x Float32 (fp.fma RNE f one g))
(define-const y Float32 (fp.add RNE f g))

(assert (distinct x y))
(check-sat)
(get-value (f g x y))
(exit)

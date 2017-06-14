(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
;(set-info :status unsat)

(define-const three Float32 ((_ to_fp 8 24) RNE 3.0))

(declare-const f Float32)

(assert (distinct (fp.mul RNE f three)
                  (fp.add RNE (fp.add RNE f f) f)))
(check-sat)
(exit)

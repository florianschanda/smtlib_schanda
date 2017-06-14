(set-logic QF_FP)
(set-info :source |Reviewing of Martin Brain's examples by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
;(set-info :status unsat)

; divide_underflow_1

(declare-const f Float32)
(declare-const g Float32)

(assert (fp.geq f (fp #b0 #b01101001 #b00000000000000000000000)))
(assert (fp.gt  g (_ +zero 8 24)))

(assert (not (fp.gt (fp.div RNE f g) (_ +zero 8 24))))
(check-sat)
(exit)

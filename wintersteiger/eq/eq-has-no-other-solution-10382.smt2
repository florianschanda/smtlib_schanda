(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4529994934746117696278133735177107155323028564453125p-769 {- 2040128350011285 -769 (-4.67949e-232)}
; Y = -1.989077146911612192781149133224971592426300048828125p-8 {- 4454407470271810 -8 (-0.00776983)}
; -1.4529994934746117696278133735177107155323028564453125p-769 = -1.989077146911612192781149133224971592426300048828125p-8 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011111110 #b0111001111110111110001100101100110010011111110010101)))
(assert (= y (fp #b1 #b01111110111 #b1111110100110100001010001110111100110100110101000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

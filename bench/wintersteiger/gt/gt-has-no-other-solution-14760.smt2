(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2425696825246224097583080947515554726123809814453125p-720 {- 1092436731829269 -720 (-2.25281e-217)}
; Y = -1.975720703459496352394353380077518522739410400390625p-914 {- 4394255396517866 -914 (-1.42662e-275)}
; -1.2425696825246224097583080947515554726123809814453125p-720 > -1.975720703459496352394353380077518522739410400390625p-914 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100101111 #b0011111000011001000010111111010101110001110000010101)))
(assert (= y (fp #b1 #b00001101101 #b1111100111001000110101001111111101100011011111101010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3727208147077256672474732113187201321125030517578125p-548 {- 1678585322230941 -548 (-1.48986e-165)}
; Y = 1.3054110519559987135806977676111273467540740966796875p-514 {+ 1375449099783867 -514 (2.43405e-155)}
; -1.3727208147077256672474732113187201321125030517578125p-548 = 1.3054110519559987135806977676111273467540740966796875p-514 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111011011 #b0101111101101010101000011001110110110101010010011101)))
(assert (= y (fp #b0 #b00111111101 #b0100111000101111011010110010111111111100111010111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 0.1064568695702707845640588857349939644336700439453125p-1022 {+ 479439118127701 -1023 (2.36874e-309)}
; Y = 1.2942185874525760080899772219709120690822601318359375p-252 {+ 1325042720816895 -252 (1.78833e-076)}
; 0.1064568695702707845640588857349939644336700439453125p-1022 * 1.2942185874525760080899772219709120690822601318359375p-252 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0001101101000000110000011110010100111101001001010101)))
(assert (= y (fp #b0 #b01100000011 #b0100101101010001111010001100101011111011111011111111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

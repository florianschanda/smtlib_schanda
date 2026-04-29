(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1102184195124509269447798942564986646175384521484375p439 {- 496379633045639 439 (-1.57607e+132)}
; Y = -1.4854870638009403105428418712108395993709564208984375p-463 {- 2186439359627111 -463 (-6.23707e-140)}
; -1.1102184195124509269447798942564986646175384521484375p439 > -1.4854870638009403105428418712108395993709564208984375p-463 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110110110 #b0001110000110111010001100011101100111001000010000111)))
(assert (= y (fp #b1 #b01000110000 #b0111110001001000111000010101010110100111111101100111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0592159859895364792947702881065197288990020751953125p11 {+ 266685092436853 11 (2169.27)}
; Y = 1.8904653243856721633875395127688534557819366455078125p-255 {+ 4010299303089661 -255 (3.26528e-077)}
; 1.0592159859895364792947702881065197288990020751953125p11 = 1.8904653243856721633875395127688534557819366455078125p-255 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000001010 #b0000111100101000110001110110001100111001101101110101)))
(assert (= y (fp #b0 #b01100000000 #b1110001111110101100010010001011001110101010111111101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

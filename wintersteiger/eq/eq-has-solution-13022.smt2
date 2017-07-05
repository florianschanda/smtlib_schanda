(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.020713745070029876416128900018520653247833251953125p-632 {- 93286414578834 -632 (-5.72726e-191)}
; Y = 1.1682074560578901145646568693337030708789825439453125p287 {+ 757539036423253 287 (2.90488e+086)}
; -1.020713745070029876416128900018520653247833251953125p-632 = 1.1682074560578901145646568693337030708789825439453125p287 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110000111 #b0000010101001101011111101111100110100111010010010010)))
(assert (= y (fp #b0 #b10100011110 #b0010101100001111101001001101001010110110010001010101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

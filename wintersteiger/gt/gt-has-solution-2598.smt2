(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.269301772268042416413891260162927210330963134765625p779 {+ 1212827361236570 779 (4.03582e+234)}
; Y = -1.67804793240268423915040330030024051666259765625p-341 {- 3053656415708064 -341 (-3.74607e-103)}
; 1.269301772268042416413891260162927210330963134765625p779 > -1.67804793240268423915040330030024051666259765625p-341 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100001010 #b0100010011110000111101100000000010100101011001011010)))
(assert (= y (fp #b1 #b01010101010 #b1010110110010100100011001001111011001010001110100000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

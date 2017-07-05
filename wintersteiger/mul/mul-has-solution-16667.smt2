(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5036575141706929326090858012321405112743377685546875p-384 {+ 2268271793141483 -384 (3.8162e-116)}
; Y = -0.820750830069636005958955138339661061763763427734375p-1022 {- 3696333132465638 -1023 (-1.82623e-308)}
; 1.5036575141706929326090858012321405112743377685546875p-384 * -0.820750830069636005958955138339661061763763427734375p-1022 == -0.0000000000000002220446049250313080847263336181640625p-1022
; [HW: -0.0000000000000002220446049250313080847263336181640625p-1022] 

; mpf : - 1 -1023
; mpfd: - 1 -1023 (-4.94066e-324) class: Neg. denorm.
; hwf : - 1 -1023 (-4.94066e-324) class: Neg. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001111111 #b1000000011101111101100101110011110111111011011101011)))
(assert (= y (fp #b1 #b00000000000 #b1101001000011100101110011111010101010000010111100110)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)

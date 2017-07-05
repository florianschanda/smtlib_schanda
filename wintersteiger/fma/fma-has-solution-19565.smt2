(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3355286943523718701243296891334466636180877685546875p544 {- 1511086902857451 544 (-7.69079e+163)}
; Y = 1.5883120291150822911419027150259353220462799072265625p248 {+ 2649521835100265 248 (7.18414e+074)}
; Z = -1.7371104288761565204168846321408636868000030517578125p-325 {- 3319650252817565 -325 (-2.54143e-098)}
; -1.3355286943523718701243296891334466636180877685546875p544 x 1.5883120291150822911419027150259353220462799072265625p248 -1.7371104288761565204168846321408636868000030517578125p-325 == -1.0606181452341161275398917496204376220703125p793
; [HW: -1.0606181452341161275398917496204376220703125p793] 

; mpf : - 272999856288256 793
; mpfd: - 272999856288256 793 (-5.52517e+238) class: Neg. norm. non-zero
; hwf : - 272999856288256 793 (-5.52517e+238) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000011111 #b0101010111100101001101010110000100011100111011101011)))
(assert (= y (fp #b0 #b10011110111 #b1001011010011011100111011111110011100100100001101001)))
(assert (= z (fp #b1 #b01010111010 #b1011110010110011010001001110000110010000010010011101)))
(assert (= r (fp #b1 #b11100011000 #b0000111110000100101010111011011101010011001000000000)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)

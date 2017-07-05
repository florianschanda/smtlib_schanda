(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.973632632544818132913633235148154199123382568359375p-548 {- 4384851561124598 -548 (-2.14205e-165)}
; Y = -1.009288692573544921060602064244449138641357421875p-630 {- 41832552412976 -630 (-2.26526e-190)}
; -1.973632632544818132913633235148154199123382568359375p-548 / -1.009288692573544921060602064244449138641357421875p-630 == 1.9554688832511646356948631364502944052219390869140625p82
; [HW: 1.9554688832511646356948631364502944052219390869140625p82] 

; mpf : + 4303049306574049 82
; mpfd: + 4303049306574049 82 (9.45607e+024) class: Pos. norm. non-zero
; hwf : + 4303049306574049 82 (9.45607e+024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111011011 #b1111100100111111111111001111101100011001001011110110)))
(assert (= y (fp #b1 #b00110001001 #b0000001001100000101111100110011011010011011100110000)))
(assert (= r (fp #b0 #b10001010001 #b1111010010011001100110111101010111101000110011100001)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)

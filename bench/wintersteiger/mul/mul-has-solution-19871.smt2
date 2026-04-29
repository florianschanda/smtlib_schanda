(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3818823529753856416135704421321861445903778076171875p-408 {- 1719845222559315 -408 (-2.09042e-123)}
; Y = -1.77716789331436242349582244060002267360687255859375p-766 {- 3500053034734876 -766 (-4.5788e-231)}
; -1.3818823529753856416135704421321861445903778076171875p-408 * -1.77716789331436242349582244060002267360687255859375p-766 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001100111 #b0110000111000011000010101011100011110010111001010011)))
(assert (= y (fp #b1 #b00100000001 #b1100011011110100011110011001110101001001010100011100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)

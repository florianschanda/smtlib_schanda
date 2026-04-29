(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.936719663767410448684813673025928437709808349609375p-431 {- 4218610328693526 -431 (-3.49252e-130)}
; Y = -1.6040164125060660804678036583936773240566253662109375p679 {- 2720248090287983 679 (-4.02324e+204)}
; -1.936719663767410448684813673025928437709808349609375p-431 / -1.6040164125060660804678036583936773240566253662109375p679 == +zero
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
(assert (= x (fp #b1 #b01001010000 #b1110111111001100110111000010000101100110101100010110)))
(assert (= y (fp #b1 #b11010100110 #b1001101010100000110100011101000111110101111101101111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)

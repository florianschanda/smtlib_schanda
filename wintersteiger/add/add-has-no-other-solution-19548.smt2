(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.909930489758568938896132749505341053009033203125p351 {- 4097962614609744 351 (-8.76085e+105)}
; Y = 1.3186914878461062361481026528053916990756988525390625p158 {+ 1435258865909873 158 (4.81817e+047)}
; -1.909930489758568938896132749505341053009033203125p351 + 1.3186914878461062361481026528053916990756988525390625p158 == -1.9099304897585687168515278244740329682826995849609375p351
; [HW: -1.9099304897585687168515278244740329682826995849609375p351] 

; mpf : - 4097962614609743 351
; mpfd: - 4097962614609743 351 (-8.76085e+105) class: Neg. norm. non-zero
; hwf : - 4097962614609743 351 (-8.76085e+105) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101011110 #b1110100011110001001101000101111100100101011101010000)))
(assert (= y (fp #b0 #b10010011101 #b0101000110010101110000111110110111010000000001110001)))
(assert (= r (fp #b1 #b10101011110 #b1110100011110001001101000101111100100101011101001111)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)

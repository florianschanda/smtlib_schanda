(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8723550055452873319694617748609744012355804443359375p52 {- 3928737677908543 52 (-8.43234e+015)}
; Y = -1.796777114342229086929592085652984678745269775390625p566 {- 3588365115249002 566 (-4.33982e+170)}
; -1.8723550055452873319694617748609744012355804443359375p52 < -1.796777114342229086929592085652984678745269775390625p566 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000110011 #b1101111101010010101010000101101101010001101000111111)))
(assert (= y (fp #b1 #b11000110101 #b1100101111111001100101011100000001001101000101101010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

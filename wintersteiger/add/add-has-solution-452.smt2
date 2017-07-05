(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3482699150411694422047048647073097527027130126953125p-469 {- 1568468259603765 -469 (-8.84522e-142)}
; Y = -1.6103346895395007631890393895446322858333587646484375p-616 {- 2748703080381383 -616 (-5.9216e-186)}
; -1.3482699150411694422047048647073097527027130126953125p-469 + -1.6103346895395007631890393895446322858333587646484375p-616 == -1.348269915041169664249309789738617837429046630859375p-469
; [HW: -1.348269915041169664249309789738617837429046630859375p-469] 

; mpf : - 1568468259603766 -469
; mpfd: - 1568468259603766 -469 (-8.84522e-142) class: Neg. norm. non-zero
; hwf : - 1568468259603766 -469 (-8.84522e-142) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000101010 #b0101100100101000001101111001011101001000010100110101)))
(assert (= y (fp #b1 #b00110010111 #b1001110000111110111001001110101100101111101111000111)))
(assert (= r (fp #b1 #b01000101010 #b0101100100101000001101111001011101001000010100110110)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)

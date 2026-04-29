(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9798624378810651958104926961823366582393646240234375p-236 {+ 4412908110115511 -236 (1.7929e-071)}
; Y = -1.397055983099515064083107063197530806064605712890625p984 {- 1788181177532202 984 (-2.28418e+296)}
; 1.9798624378810651958104926961823366582393646240234375p-236 / -1.397055983099515064083107063197530806064605712890625p984 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100010011 #b1111101011011000010000111100010101000111001010110111)))
(assert (= y (fp #b1 #b11111010111 #b0110010110100101011101011111111000010111111100101010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)

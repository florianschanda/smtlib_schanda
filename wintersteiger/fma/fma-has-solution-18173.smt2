(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2021297532264509921873241182765923440456390380859375p21 {+ 910311481311135 21 (2.52105e+006)}
; Y = -1.8016116097256056338693497309577651321887969970703125p-633 {- 3610137746856101 -633 (-5.05445e-191)}
; Z = -0.0363334273889908132559867226518690586090087890625p-1022 {- 163631210050152 -1023 (-8.08446e-310)}
; 1.2021297532264509921873241182765923440456390380859375p21 x -1.8016116097256056338693497309577651321887969970703125p-633 -0.0363334273889908132559867226518690586090087890625p-1022 == -1.082885459904675773401550031849183142185211181640625p-611
; [HW: -1.082885459904675773401550031849183142185211181640625p-611] 

; mpf : - 373282926341130 -611
; mpfd: - 373282926341130 -611 (-1.27425e-184) class: Neg. norm. non-zero
; hwf : - 373282926341130 -611 (-1.27425e-184) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010100 #b0011001110111110110001101000011110100111111110011111)))
(assert (= y (fp #b1 #b00110000110 #b1100110100110110011010110001111111011101100010100101)))
(assert (= z (fp #b1 #b00000000000 #b0000100101001101001001011100001001100011001001101000)))
(assert (= r (fp #b1 #b00110011100 #b0001010100110111111110110100001110011010110000001010)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.680660511816413293928462735493667423725128173828125p864 {- 3065422427382210 864 (-2.06727e+260)}
; Y = 1.1432719406482212409770227168337441980838775634765625p-427 {+ 645239458515977 -427 (3.29869e-129)}
; -1.680660511816413293928462735493667423725128173828125p864 % 1.1432719406482212409770227168337441980838775634765625p-427 == -1.331516346144656637306979973800480365753173828125p-430
; [HW: -1.331516346144656637306979973800480365753173828125p-430] 

; mpf : - 1493016892964304 -430
; mpfd: - 1493016892964304 -430 (-4.80229e-130) class: Neg. norm. non-zero
; hwf : - 1493016892964304 -430 (-4.80229e-130) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101011111 #b1010111000111111110001000110110111101110000111000010)))
(assert (= y (fp #b0 #b01001010100 #b0010010010101101011110000100101110000100110000001001)))
(assert (= r (fp #b1 #b01001010001 #x54de4158c7dd0)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)

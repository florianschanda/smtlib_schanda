(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8152219741713866429932977553107775747776031494140625p-491 {- 3671433379102497 -491 (-2.83924e-148)}
; Y = -1.3958834249310536623767120545380748808383941650390625p-786 {- 1782900445001649 -786 (-3.42983e-237)}
; -1.8152219741713866429932977553107775747776031494140625p-491 - -1.3958834249310536623767120545380748808383941650390625p-786 == -1.81522197417138642094869283027946949005126953125p-491
; [HW: -1.81522197417138642094869283027946949005126953125p-491] 

; mpf : - 3671433379102496 -491
; mpfd: - 3671433379102496 -491 (-2.83924e-148) class: Neg. norm. non-zero
; hwf : - 3671433379102496 -491 (-2.83924e-148) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000010100 #b1101000010110010011000110010011000001011111100100001)))
(assert (= y (fp #b1 #b00011101101 #b0110010101011000100111011011101100011011011110110001)))
(assert (= r (fp #b1 #b01000010100 #b1101000010110010011000110010011000001011111100100000)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)

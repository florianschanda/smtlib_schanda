(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8308932836513085451457527597085572779178619384765625p-305 {- 3742010682636681 -305 (-2.80876e-092)}
; Y = -1.5396510312970612677219151009921915829181671142578125p-32 {- 2430372183459549 -32 (-3.58478e-010)}
; -1.8308932836513085451457527597085572779178619384765625p-305 + -1.5396510312970612677219151009921915829181671142578125p-32 == -1.539651031297061489766520026023499667644500732421875p-32
; [HW: -1.539651031297061489766520026023499667644500732421875p-32] 

; mpf : - 2430372183459550 -32
; mpfd: - 2430372183459550 -32 (-3.58478e-010) class: Neg. norm. non-zero
; hwf : - 2430372183459550 -32 (-3.58478e-010) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011001110 #b1101010010110101011011000001011110111111100110001001)))
(assert (= y (fp #b1 #b01111011111 #b1000101000100110100100011110101010101100011011011101)))
(assert (= r (fp #b1 #b01111011111 #b1000101000100110100100011110101010101100011011011110)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)

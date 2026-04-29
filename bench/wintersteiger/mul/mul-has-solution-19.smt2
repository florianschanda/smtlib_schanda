(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3579049532910405506669349051662720739841461181640625p-917 {- 1611860614275585 -917 (-1.22564e-276)}
; Y = 1.7108433787258967573308154896949417889118194580078125p-479 {+ 3201353975548733 -479 (1.09608e-144)}
; -1.3579049532910405506669349051662720739841461181640625p-917 * 1.7108433787258967573308154896949417889118194580078125p-479 == -zero
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
(assert (= x (fp #b1 #b00001101010 #b0101101110011111101010001011010101110110001000000001)))
(assert (= y (fp #b0 #b01000100000 #b1011010111111001110101001110100000110100101100111101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)

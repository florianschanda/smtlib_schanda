(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9910656362849603606690607193741016089916229248046875 767 {+ 4463362830272651 767 (1.54558e+231)}
; 1.9910656362849603606690607193741016089916229248046875 767 I == 1.9910656362849603606690607193741016089916229248046875 767
; [HW: 1.9910656362849603606690607193741016089916229248046875 767] 

; mpf : + 4463362830272651 767
; mpfd: + 4463362830272651 767 (1.54558e+231) class: Pos. norm. non-zero
; hwf : + 4463362830272651 767 (1.54558e+231) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111110 #b1111110110110110011110100100000000001000100010001011)))
(assert (= r (fp #b0 #b11011111110 #b1111110110110110011110100100000000001000100010001011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

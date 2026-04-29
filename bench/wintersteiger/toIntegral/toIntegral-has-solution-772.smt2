(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6628763168048557030687106816913001239299774169921875 937 {- 2985329533355075 937 (-1.93182e+282)}
; -1.6628763168048557030687106816913001239299774169921875 937 I == -1.6628763168048557030687106816913001239299774169921875 937
; [HW: -1.6628763168048557030687106816913001239299774169921875 937] 

; mpf : - 2985329533355075 937
; mpfd: - 2985329533355075 937 (-1.93182e+282) class: Neg. norm. non-zero
; hwf : - 2985329533355075 937 (-1.93182e+282) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110101000 #b1010100110110010010000110010010111111000010001000011)))
(assert (= r (fp #b1 #b11110101000 #b1010100110110010010000110010010111111000010001000011)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

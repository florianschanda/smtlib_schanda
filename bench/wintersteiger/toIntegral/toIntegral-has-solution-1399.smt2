(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6037511515804119266448424241389147937297821044921875 417 {- 2719053461282051 417 (-5.42807e+125)}
; -1.6037511515804119266448424241389147937297821044921875 417 I == -1.6037511515804119266448424241389147937297821044921875 417
; [HW: -1.6037511515804119266448424241389147937297821044921875 417] 

; mpf : - 2719053461282051 417
; mpfd: - 2719053461282051 417 (-5.42807e+125) class: Neg. norm. non-zero
; hwf : - 2719053461282051 417 (-5.42807e+125) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110100000 #b1001101010001111011011110111101011110101110100000011)))
(assert (= r (fp #b1 #b10110100000 #b1001101010001111011011110111101011110101110100000011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

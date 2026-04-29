(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.785656147914229219253456903970800340175628662109375 237 {- 3538280734987862 237 (-3.94373e+071)}
; -1.785656147914229219253456903970800340175628662109375 237 I == -1.785656147914229219253456903970800340175628662109375 237
; [HW: -1.785656147914229219253456903970800340175628662109375 237] 

; mpf : - 3538280734987862 237
; mpfd: - 3538280734987862 237 (-3.94373e+071) class: Neg. norm. non-zero
; hwf : - 3538280734987862 237 (-3.94373e+071) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101100 #b1100100100100000110000101110010100110001011001010110)))
(assert (= r (fp #b1 #b10011101100 #b1100100100100000110000101110010100110001011001010110)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

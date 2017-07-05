(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.383633046701788327226267938385717570781707763671875 846 {- 1727729646173182 846 (-6.49228e+254)}
; -1.383633046701788327226267938385717570781707763671875 846 I == -1.383633046701788327226267938385717570781707763671875 846
; [HW: -1.383633046701788327226267938385717570781707763671875 846] 

; mpf : - 1727729646173182 846
; mpfd: - 1727729646173182 846 (-6.49228e+254) class: Neg. norm. non-zero
; hwf : - 1727729646173182 846 (-6.49228e+254) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101001101 #b0110001000110101110001100111110100111111101111111110)))
(assert (= r (fp #b1 #b11101001101 #b0110001000110101110001100111110100111111101111111110)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

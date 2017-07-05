(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7598842521876651989742867954191751778125762939453125 369 {- 3422214434997077 369 (-2.11618e+111)}
; -1.7598842521876651989742867954191751778125762939453125 369 I == -1.7598842521876651989742867954191751778125762939453125 369
; [HW: -1.7598842521876651989742867954191751778125762939453125 369] 

; mpf : - 3422214434997077 369
; mpfd: - 3422214434997077 369 (-2.11618e+111) class: Neg. norm. non-zero
; hwf : - 3422214434997077 369 (-2.11618e+111) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101110000 #b1100001010000111110001100011101111100100001101010101)))
(assert (= r (fp #b1 #b10101110000 #b1100001010000111110001100011101111100100001101010101)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)

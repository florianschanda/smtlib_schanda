(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8032367551435080077482098204200156033039093017578125 454 {+ 3617456751154589 454 (8.38824e+136)}
; 1.8032367551435080077482098204200156033039093017578125 454 I == 1.8032367551435080077482098204200156033039093017578125 454
; [HW: 1.8032367551435080077482098204200156033039093017578125 454] 

; mpf : + 3617456751154589 454
; mpfd: + 3617456751154589 454 (8.38824e+136) class: Pos. norm. non-zero
; hwf : + 3617456751154589 454 (8.38824e+136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000101 #b1100110110100000111011001000101001001001010110011101)))
(assert (= r (fp #b0 #b10111000101 #b1100110110100000111011001000101001001001010110011101)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

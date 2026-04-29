(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.011040549876252914174301622551865875720977783203125 540 {- 49722216308658 540 (-3.63887e+162)}
; -1.011040549876252914174301622551865875720977783203125 540 I == -1.011040549876252914174301622551865875720977783203125 540
; [HW: -1.011040549876252914174301622551865875720977783203125 540] 

; mpf : - 49722216308658 540
; mpfd: - 49722216308658 540 (-3.63887e+162) class: Neg. norm. non-zero
; hwf : - 49722216308658 540 (-3.63887e+162) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000011011 #b0000001011010011100011011011000010100101111110110010)))
(assert (= r (fp #b1 #b11000011011 #b0000001011010011100011011011000010100101111110110010)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

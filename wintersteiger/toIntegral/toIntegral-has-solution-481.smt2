(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9387733093607628642729423518176190555095672607421875 593 {- 4227859126222499 593 (-6.28513e+178)}
; -1.9387733093607628642729423518176190555095672607421875 593 I == -1.9387733093607628642729423518176190555095672607421875 593
; [HW: -1.9387733093607628642729423518176190555095672607421875 593] 

; mpf : - 4227859126222499 593
; mpfd: - 4227859126222499 593 (-6.28513e+178) class: Neg. norm. non-zero
; hwf : - 4227859126222499 593 (-6.28513e+178) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001010000 #b1111000001010011011100101001011000001111111010100011)))
(assert (= r (fp #b1 #b11001010000 #b1111000001010011011100101001011000001111111010100011)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.061666500547271851928599062375724315643310546875 482 {- 277721228885936 482 (-1.3257e+145)}
; -1.061666500547271851928599062375724315643310546875 482 I == -1.061666500547271851928599062375724315643310546875 482
; [HW: -1.061666500547271851928599062375724315643310546875 482] 

; mpf : - 277721228885936 482
; mpfd: - 277721228885936 482 (-1.3257e+145) class: Neg. norm. non-zero
; hwf : - 277721228885936 482 (-1.3257e+145) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111100001 #b0000111111001001011000000011001100011011111110110000)))
(assert (= r (fp #b1 #b10111100001 #b0000111111001001011000000011001100011011111110110000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)

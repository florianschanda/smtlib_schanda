(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4313770735251398757981178277987055480480194091796875 548 {- 1942749627583995 548 (-1.31884e+165)}
; -1.4313770735251398757981178277987055480480194091796875 548 I == -1.4313770735251398757981178277987055480480194091796875 548
; [HW: -1.4313770735251398757981178277987055480480194091796875 548] 

; mpf : - 1942749627583995 548
; mpfd: - 1942749627583995 548 (-1.31884e+165) class: Neg. norm. non-zero
; hwf : - 1942749627583995 548 (-1.31884e+165) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000100011 #b0110111001101110101110100101011100001000110111111011)))
(assert (= r (fp #b1 #b11000100011 #b0110111001101110101110100101011100001000110111111011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

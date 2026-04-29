(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7016878223570632844285910323378629982471466064453125 207 {- 3160121015297685 207 (-3.50017e+062)}
; -1.7016878223570632844285910323378629982471466064453125 207 I == -1.7016878223570632844285910323378629982471466064453125 207
; [HW: -1.7016878223570632844285910323378629982471466064453125 207] 

; mpf : - 3160121015297685 207
; mpfd: - 3160121015297685 207 (-3.50017e+062) class: Neg. norm. non-zero
; hwf : - 3160121015297685 207 (-3.50017e+062) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011001110 #b1011001110100001110100000010100100000110011010010101)))
(assert (= r (fp #b1 #b10011001110 #b1011001110100001110100000010100100000110011010010101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

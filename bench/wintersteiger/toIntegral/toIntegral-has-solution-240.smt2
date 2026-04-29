(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0636381987304097673785463484819047152996063232421875 743 {- 286600968088803 743 (-4.92131e+223)}
; -1.0636381987304097673785463484819047152996063232421875 743 I == -1.0636381987304097673785463484819047152996063232421875 743
; [HW: -1.0636381987304097673785463484819047152996063232421875 743] 

; mpf : - 286600968088803 743
; mpfd: - 286600968088803 743 (-4.92131e+223) class: Neg. norm. non-zero
; hwf : - 286600968088803 743 (-4.92131e+223) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011100110 #b0001000001001010100101111100111001010010110011100011)))
(assert (= r (fp #b1 #b11011100110 #b0001000001001010100101111100111001010010110011100011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

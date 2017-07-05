(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.27195711518333798295543601852841675281524658203125 1014 {- 1224785962600436 1014 (-2.233e+305)}
; -1.27195711518333798295543601852841675281524658203125 1014 I == -1.27195711518333798295543601852841675281524658203125 1014
; [HW: -1.27195711518333798295543601852841675281524658203125 1014] 

; mpf : - 1224785962600436 1014
; mpfd: - 1224785962600436 1014 (-2.233e+305) class: Neg. norm. non-zero
; hwf : - 1224785962600436 1014 (-2.233e+305) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110101 #b0100010110011110111110110100001110100000011111110100)))
(assert (= r (fp #b1 #b11111110101 #b0100010110011110111110110100001110100000011111110100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

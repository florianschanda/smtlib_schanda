(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.208260117077143203090372480801306664943695068359375 700 {- 937920185664758 700 (-6.35561e+210)}
; -1.208260117077143203090372480801306664943695068359375 700 I == -1.208260117077143203090372480801306664943695068359375 700
; [HW: -1.208260117077143203090372480801306664943695068359375 700] 

; mpf : - 937920185664758 700
; mpfd: - 937920185664758 700 (-6.35561e+210) class: Neg. norm. non-zero
; hwf : - 937920185664758 700 (-6.35561e+210) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111011 #b0011010101010000100010001111011111101000010011110110)))
(assert (= r (fp #b1 #b11010111011 #b0011010101010000100010001111011111101000010011110110)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

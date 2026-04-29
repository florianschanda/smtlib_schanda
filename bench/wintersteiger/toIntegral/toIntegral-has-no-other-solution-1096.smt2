(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.057911266505640046631242512376047670841217041015625 769 {- 260809158255354 769 (-3.28485e+231)}
; -1.057911266505640046631242512376047670841217041015625 769 I == -1.057911266505640046631242512376047670841217041015625 769
; [HW: -1.057911266505640046631242512376047670841217041015625 769] 

; mpf : - 260809158255354 769
; mpfd: - 260809158255354 769 (-3.28485e+231) class: Neg. norm. non-zero
; hwf : - 260809158255354 769 (-3.28485e+231) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100000000 #b0000111011010011010001011101001110110110001011111010)))
(assert (= r (fp #b1 #b11100000000 #b0000111011010011010001011101001110110110001011111010)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)

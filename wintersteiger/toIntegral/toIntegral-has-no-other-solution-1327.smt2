(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.57049317758226880670235914294607937335968017578125 766 {- 2569272861976916 766 (-6.09555e+230)}
; -1.57049317758226880670235914294607937335968017578125 766 I == -1.57049317758226880670235914294607937335968017578125 766
; [HW: -1.57049317758226880670235914294607937335968017578125 766] 

; mpf : - 2569272861976916 766
; mpfd: - 2569272861976916 766 (-6.09555e+230) class: Neg. norm. non-zero
; hwf : - 2569272861976916 766 (-6.09555e+230) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011111101 #b1001001000001011110101110100010001001110100101010100)))
(assert (= r (fp #b1 #b11011111101 #b1001001000001011110101110100010001001110100101010100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

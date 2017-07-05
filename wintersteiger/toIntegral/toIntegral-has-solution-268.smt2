(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0098998860834640378669746496598236262798309326171875 995 {- 44585123276499 995 (-3.38161e+299)}
; -1.0098998860834640378669746496598236262798309326171875 995 I == -1.0098998860834640378669746496598236262798309326171875 995
; [HW: -1.0098998860834640378669746496598236262798309326171875 995] 

; mpf : - 44585123276499 995
; mpfd: - 44585123276499 995 (-3.38161e+299) class: Neg. norm. non-zero
; hwf : - 44585123276499 995 (-3.38161e+299) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111100010 #b0000001010001000110011001000011011110110011011010011)))
(assert (= r (fp #b1 #b11111100010 #b0000001010001000110011001000011011110110011011010011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

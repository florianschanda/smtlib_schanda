(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3639800994461357408482626851764507591724395751953125 213 {- 1639220640235893 213 (-1.79555e+064)}
; -1.3639800994461357408482626851764507591724395751953125 213 I == -1.3639800994461357408482626851764507591724395751953125 213
; [HW: -1.3639800994461357408482626851764507591724395751953125 213] 

; mpf : - 1639220640235893 213
; mpfd: - 1639220640235893 213 (-1.79555e+064) class: Neg. norm. non-zero
; hwf : - 1639220640235893 213 (-1.79555e+064) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011010100 #b0101110100101101110011001011111110000100000101110101)))
(assert (= r (fp #b1 #b10011010100 #b0101110100101101110011001011111110000100000101110101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

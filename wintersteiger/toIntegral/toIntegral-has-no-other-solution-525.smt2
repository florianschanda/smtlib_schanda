(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.09760621894878429571917877183295786380767822265625 145 {- 439579331286788 145 (-4.89549e+043)}
; -1.09760621894878429571917877183295786380767822265625 145 I == -1.09760621894878429571917877183295786380767822265625 145
; [HW: -1.09760621894878429571917877183295786380767822265625 145] 

; mpf : - 439579331286788 145
; mpfd: - 439579331286788 145 (-4.89549e+043) class: Neg. norm. non-zero
; hwf : - 439579331286788 145 (-4.89549e+043) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010010000 #b0001100011111100101110001001111001000101011100000100)))
(assert (= r (fp #b1 #b10010010000 #b0001100011111100101110001001111001000101011100000100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

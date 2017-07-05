(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0316093470432885492726882148417644202709197998046875 752 {- 142355843565579 752 (-2.44384e+226)}
; -1.0316093470432885492726882148417644202709197998046875 752 I == -1.0316093470432885492726882148417644202709197998046875 752
; [HW: -1.0316093470432885492726882148417644202709197998046875 752] 

; mpf : - 142355843565579 752
; mpfd: - 142355843565579 752 (-2.44384e+226) class: Neg. norm. non-zero
; hwf : - 142355843565579 752 (-2.44384e+226) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011101111 #b0000100000010111100011001101011111001100100000001011)))
(assert (= r (fp #b1 #b11011101111 #b0000100000010111100011001101011111001100100000001011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

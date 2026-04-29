(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6005646277989626913296206112136133015155792236328125 139 {- 2704702633967309 139 (-1.11543e+042)}
; -1.6005646277989626913296206112136133015155792236328125 139 I == -1.6005646277989626913296206112136133015155792236328125 139
; [HW: -1.6005646277989626913296206112136133015155792236328125 139] 

; mpf : - 2704702633967309 139
; mpfd: - 2704702633967309 139 (-1.11543e+042) class: Neg. norm. non-zero
; hwf : - 2704702633967309 139 (-1.11543e+042) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010001010 #b1001100110111110100110100111101110000111111011001101)))
(assert (= r (fp #b1 #b10010001010 #b1001100110111110100110100111101110000111111011001101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

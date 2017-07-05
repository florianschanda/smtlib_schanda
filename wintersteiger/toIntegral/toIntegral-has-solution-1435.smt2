(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5439080719671915975510501084499992430210113525390625 461 {- 2449544190235249 461 (-9.19283e+138)}
; -1.5439080719671915975510501084499992430210113525390625 461 I == -1.5439080719671915975510501084499992430210113525390625 461
; [HW: -1.5439080719671915975510501084499992430210113525390625 461] 

; mpf : - 2449544190235249 461
; mpfd: - 2449544190235249 461 (-9.19283e+138) class: Neg. norm. non-zero
; hwf : - 2449544190235249 461 (-9.19283e+138) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111001100 #b1000101100111101100011110011010100100001001001110001)))
(assert (= r (fp #b1 #b10111001100 #b1000101100111101100011110011010100100001001001110001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

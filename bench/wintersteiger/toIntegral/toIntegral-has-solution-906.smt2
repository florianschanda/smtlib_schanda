(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5830903043234216820422943783341906964778900146484375 699 {- 2626005277274311 699 (-4.16364e+210)}
; -1.5830903043234216820422943783341906964778900146484375 699 I == -1.5830903043234216820422943783341906964778900146484375 699
; [HW: -1.5830903043234216820422943783341906964778900146484375 699] 

; mpf : - 2626005277274311 699
; mpfd: - 2626005277274311 699 (-4.16364e+210) class: Neg. norm. non-zero
; hwf : - 2626005277274311 699 (-4.16364e+210) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111010 #b1001010101000101011001111111101110101111000011000111)))
(assert (= r (fp #b1 #b11010111010 #b1001010101000101011001111111101110101111000011000111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

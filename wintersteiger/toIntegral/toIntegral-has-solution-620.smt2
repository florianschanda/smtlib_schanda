(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.345327893446908174013287862180732190608978271484375 461 {+ 1555218572248134 461 (8.01044e+138)}
; 1.345327893446908174013287862180732190608978271484375 461 I == 1.345327893446908174013287862180732190608978271484375 461
; [HW: 1.345327893446908174013287862180732190608978271484375 461] 

; mpf : + 1555218572248134 461
; mpfd: + 1555218572248134 461 (8.01044e+138) class: Pos. norm. non-zero
; hwf : + 1555218572248134 461 (8.01044e+138) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111001100 #b0101100001100111011010001010100011000000010001000110)))
(assert (= r (fp #b0 #b10111001100 #b0101100001100111011010001010100011000000010001000110)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

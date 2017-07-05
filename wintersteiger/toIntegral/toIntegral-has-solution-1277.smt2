(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.648507987223009951804897355032153427600860595703125 52 {+ 2920620329604338 52 (7.42422e+015)}
; 1.648507987223009951804897355032153427600860595703125 52 I == 1.648507987223009951804897355032153427600860595703125 52
; [HW: 1.648507987223009951804897355032153427600860595703125 52] 

; mpf : + 2920620329604338 52
; mpfd: + 2920620329604338 52 (7.42422e+015) class: Pos. norm. non-zero
; hwf : + 2920620329604338 52 (7.42422e+015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110011 #b1010011000000100100111101001010001010001010011110010)))
(assert (= r (fp #b0 #b10000110011 #b1010011000000100100111101001010001010001010011110010)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

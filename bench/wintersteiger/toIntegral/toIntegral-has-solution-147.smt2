(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.55141744923633329023004989721812307834625244140625 1002 {- 2483363418906340 1002 (-6.64943e+301)}
; -1.55141744923633329023004989721812307834625244140625 1002 I == -1.55141744923633329023004989721812307834625244140625 1002
; [HW: -1.55141744923633329023004989721812307834625244140625 1002] 

; mpf : - 2483363418906340 1002
; mpfd: - 2483363418906340 1002 (-6.64943e+301) class: Neg. norm. non-zero
; hwf : - 2483363418906340 1002 (-6.64943e+301) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111101001 #b1000110100101001101100011010011011101001111011100100)))
(assert (= r (fp #b1 #b11111101001 #b1000110100101001101100011010011011101001111011100100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

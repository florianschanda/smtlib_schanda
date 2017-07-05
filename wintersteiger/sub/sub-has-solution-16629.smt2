(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2700195675780332482673884442192502319812774658203125p-219 {- 1216060023927173 -219 (-1.50744e-066)}
; Y = +zero {+ 0 -1023 (0)}
; -1.2700195675780332482673884442192502319812774658203125p-219 - +zero == -1.2700195675780332482673884442192502319812774658203125p-219
; [HW: -1.2700195675780332482673884442192502319812774658203125p-219] 

; mpf : - 1216060023927173 -219
; mpfd: - 1216060023927173 -219 (-1.50744e-066) class: Neg. norm. non-zero
; hwf : - 1216060023927173 -219 (-1.50744e-066) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100100100 #b0100010100100000000000001001110000000111000110000101)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b01100100100 #b0100010100100000000000001001110000000111000110000101)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)

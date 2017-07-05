(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.59495188078531224817879774491302669048309326171875 233 {+ 2679425068608108 233 (2.20159e+070)}
; 1.59495188078531224817879774491302669048309326171875 233 I == 1.59495188078531224817879774491302669048309326171875 233
; [HW: 1.59495188078531224817879774491302669048309326171875 233] 

; mpf : + 2679425068608108 233
; mpfd: + 2679425068608108 233 (2.20159e+070) class: Pos. norm. non-zero
; hwf : + 2679425068608108 233 (2.20159e+070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011101000 #b1001100001001110110001000011011010101010101001101100)))
(assert (= r (fp #b0 #b10011101000 #b1001100001001110110001000011011010101010101001101100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

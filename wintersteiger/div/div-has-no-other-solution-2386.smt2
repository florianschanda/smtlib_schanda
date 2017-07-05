(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9573658740893351559719803844927810132503509521484375p439 {- 4311592593805959 439 (-2.77869e+132)}
; Y = 1.2514955032480958863061459851451218128204345703125p763 {+ 1132635054713480 763 (6.07178e+229)}
; -1.9573658740893351559719803844927810132503509521484375p439 / 1.2514955032480958863061459851451218128204345703125p763 == -1.5640214998849322203255951535538770258426666259765625p-324
; [HW: -1.5640214998849322203255951535538770258426666259765625p-324] 

; mpf : - 2540127016710729 -324
; mpfd: - 2540127016710729 -324 (-4.5764e-098) class: Neg. norm. non-zero
; hwf : - 2540127016710729 -324 (-4.5764e-098) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110110110 #b1111010100010101111011100000111110000101001010000111)))
(assert (= y (fp #b0 #b11011111010 #b0100000001100010000000100110000110001010101010001000)))
(assert (= r (fp #b1 #b01010111011 #b1001000001100011101101101000100000111111001001001001)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)

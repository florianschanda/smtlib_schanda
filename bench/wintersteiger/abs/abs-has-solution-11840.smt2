(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.908509074281621309410184039734303951263427734375p-211 {- 4091561128397424 -211 (-5.79916e-064)}
; -1.908509074281621309410184039734303951263427734375p-211 | == 1.908509074281621309410184039734303951263427734375p-211
; [HW: 1.908509074281621309410184039734303951263427734375p-211] 

; mpf : + 4091561128397424 -211
; mpfd: + 4091561128397424 -211 (5.79916e-064) class: Pos. norm. non-zero
; hwf : + 4091561128397424 -211 (5.79916e-064) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100101100 #b1110100010010100000011001111101000101000101001110000)))
(assert (= r (fp #b0 #b01100101100 #b1110100010010100000011001111101000101000101001110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

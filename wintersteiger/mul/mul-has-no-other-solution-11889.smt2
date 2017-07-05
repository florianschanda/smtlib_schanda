(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0931327403117017116329634518478997051715850830078125p-81 {- 419432574563773 -81 (-4.52109e-025)}
; Y = -0.523991671571656159045460299239493906497955322265625p-1022 {- 2359848696835354 -1023 (-1.16592e-308)}
; -1.0931327403117017116329634518478997051715850830078125p-81 * -0.523991671571656159045460299239493906497955322265625p-1022 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110101110 #b0001011111010111100011000001100111010011010110111101)))
(assert (= y (fp #b1 #b00000000000 #b1000011000100100010100010111010011000110110100011010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)

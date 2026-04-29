(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.987290032792559113516972502111457288265228271484375p-136 {- 4446359023791174 -136 (-2.2813e-041)}
; Y = -1.6193555712816503078244068092317320406436920166015625p-997 {- 2789329520033881 -997 (-1.20903e-300)}
; -1.987290032792559113516972502111457288265228271484375p-136 < -1.6193555712816503078244068092317320406436920166015625p-997 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110111 #b1111110010111111000010100010001010000010110001000110)))
(assert (= y (fp #b1 #b00000011010 #b1001111010001110000101100011001101000000000001011001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6371535467622682080701679296907968819141387939453125p-901 {+ 2869484475776341 -901 (9.68419e-272)}
; Y = -1.73516886886433585601707818568684160709381103515625p-935 {- 3310906243871812 -935 (-5.97442e-282)}
; 1.6371535467622682080701679296907968819141387939453125p-901 * -1.73516886886433585601707818568684160709381103515625p-935 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001111010 #b1010001100011100011111101010110111011111110101010101)))
(assert (= y (fp #b1 #b00001011000 #b1011110000110100000001101110100011001111010001000100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)

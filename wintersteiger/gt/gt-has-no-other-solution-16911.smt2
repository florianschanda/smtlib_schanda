(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.15044562914081094362472867942415177822113037109375p-80 {+ 677546879338076 -80 (9.51626e-025)}
; Y = -1.0398675198196449809273644859786145389080047607421875p648 {- 179547347403939 648 (-1.21455e+195)}
; 1.15044562914081094362472867942415177822113037109375p-80 > -1.0398675198196449809273644859786145389080047607421875p648 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101111 #b0010011010000011100110101101000011111100011001011100)))
(assert (= y (fp #b1 #b11010000111 #b0000101000110100110000011111110111001100010010100011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

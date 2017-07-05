(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7742468773878414811662196370889432728290557861328125p-20 {- 3486897948496653 -20 (-1.69205e-006)}
; Y = 1.6427714466441465379631381438230164349079132080078125p-33 {+ 2894785247590973 -33 (1.91244e-010)}
; -1.7742468773878414811662196370889432728290557861328125p-20 < 1.6427714466441465379631381438230164349079132080078125p-33 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111101011 #b1100011000110101000010110001100101101001001100001101)))
(assert (= y (fp #b0 #b01111011110 #b1010010010001100101010110110011000100011101000111101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

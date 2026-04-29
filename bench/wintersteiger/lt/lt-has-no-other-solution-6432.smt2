(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.787284874111548571562479992280714213848114013671875p-330 {+ 3545615865683198 -330 (8.17138e-100)}
; Y = -1.9005669654796084611092510385788045823574066162109375p-684 {- 4055793050156143 -684 (-2.36792e-206)}
; 1.787284874111548571562479992280714213848114013671875p-330 < -1.9005669654796084611092510385788045823574066162109375p-684 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010110101 #b1100100110001011100000000110001011110001110011111110)))
(assert (= y (fp #b1 #b00101010011 #b1110011010001011100011101000000010010111110001101111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

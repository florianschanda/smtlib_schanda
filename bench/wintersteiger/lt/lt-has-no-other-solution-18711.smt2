(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.23069913940802511120864437543787062168121337890625p-381 {+ 1038976558272676 -381 (2.49875e-115)}
; Y = -1.85592799833356547622997823054902255535125732421875p482 {- 3854757014351020 482 (-2.3175e+145)}
; 1.23069913940802511120864437543787062168121337890625p-381 < -1.85592799833356547622997823054902255535125732421875p482 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010000010 #b0011101100001111000110010100101011111001000010100100)))
(assert (= y (fp #b1 #b10111100001 #b1101101100011110000110001110100010010010110010101100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.742499515597334180938560166396200656890869140625p-645 {+ 3343920541766928 -645 (1.19351e-194)}
; Y = -1.3940997068407774417408973022247664630413055419921875p-196 {- 1774867292874947 -196 (-1.38808e-059)}
; 1.742499515597334180938560166396200656890869140625p-645 > -1.3940997068407774417408973022247664630413055419921875p-196 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101111010 #b1011111000010100011100101100000011001001010100010000)))
(assert (= y (fp #b1 #b01100111011 #b0110010011100011101101111110100000111110100011000011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.702028910164896213785823420039378106594085693359375p-254 {- 3161657138221942 -254 (-5.8796e-077)}
; Y = +zero {+ 0 -1023 (0)}
; -1.702028910164896213785823420039378106594085693359375p-254 > +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100000001 #b1011001110111000001010101010101000000001001101110110)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

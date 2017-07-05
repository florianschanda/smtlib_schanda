(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1567108456997694521106723186676390469074249267578125p-384 {- 705762906298397 -384 (-2.93566e-116)}
; Y = -1.3330597545788560598367666898411698639392852783203125p1005 {- 1499967786613445 1005 (-4.57083e+302)}
; -1.1567108456997694521106723186676390469074249267578125p-384 > -1.3330597545788560598367666898411698639392852783203125p1005 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001111111 #b0010100000011110001100111011010100110101100000011101)))
(assert (= y (fp #b1 #b11111101100 #b0101010101000011011001110111000110000111101011000101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

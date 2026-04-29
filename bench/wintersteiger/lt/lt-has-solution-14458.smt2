(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.696842123231421251006167949526570737361907958984375p505 {- 3138297926521094 505 (-1.77742e+152)}
; Y = -1.9608799417737674541939441041904501616954803466796875p-272 {- 4327418547720123 -272 (-2.584e-082)}
; -1.696842123231421251006167949526570737361907958984375p505 < -1.9608799417737674541939441041904501616954803466796875p-272 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111000 #b1011001001100100001111101101000111000001000100000110)))
(assert (= y (fp #b1 #b01011101111 #b1111010111111100001110100101010101001100111110111011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

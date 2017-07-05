(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4671710813829690334131328199873678386211395263671875p-808 {- 2103951508034611 -808 (-8.59497e-244)}
; Y = 1.6056457108685895374122765133506618440151214599609375p-299 {+ 2727585797786319 -299 (1.57645e-090)}
; -1.4671710813829690334131328199873678386211395263671875p-808 < 1.6056457108685895374122765133506618440151214599609375p-299 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011010111 #b0111011110011000100001100010010000101101010000110011)))
(assert (= y (fp #b0 #b01011010100 #b1001101100001011100110001110100100100100101011001111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

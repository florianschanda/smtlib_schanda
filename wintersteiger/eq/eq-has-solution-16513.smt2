(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1184293062847989741470655644661746919155120849609375p-569 {+ 533358179653967 -569 (5.78817e-172)}
; Y = 1.5240331024318127806083111863699741661548614501953125p-972 {+ 2360035284841717 -972 (3.81802e-293)}
; 1.1184293062847989741470655644661746919155120849609375p-569 = 1.5240331024318127806083111863699741661548614501953125p-972 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111000110 #b0001111001010001011000100000110101100001100101001111)))
(assert (= y (fp #b0 #b00000110011 #b1000011000100111000010001000110011110111010011110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

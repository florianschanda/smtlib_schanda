(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.42002868292294781582540963427163660526275634765625p-413 {- 1891641019896708 -413 (-6.71288e-125)}
; Y = 1.4133206248415686179242811704170890152454376220703125p-906 {+ 1861430612021029 -906 (2.61255e-273)}
; -1.42002868292294781582540963427163660526275634765625p-413 < 1.4133206248415686179242811704170890152454376220703125p-906 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001100010 #b0110101110000110111111111111000010001001001110000100)))
(assert (= y (fp #b0 #b00001110101 #b0110100111001111011000010110011001110100111100100101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5477196155255590337418425406212918460369110107421875p-729 {+ 2466709856384419 -729 (5.48057e-220)}
; Y = -1.34417335965515416518201163853518664836883544921875p-538 {- 1550019014293804 -538 (-1.49389e-162)}
; 1.5477196155255590337418425406212918460369110107421875p-729 < -1.34417335965515416518201163853518664836883544921875p-538 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100100110 #b1000110000110111010110100100110000001111010110100011)))
(assert (= y (fp #b1 #b00111100101 #b0101100000011011101111101100101111011111100100101100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4161009380448827954523949301801621913909912109375p370 {- 1873952029527448 370 (-3.40559e+111)}
; Y = 1.8228154453213927244092928958707489073276519775390625p-311 {+ 3705631332944113 -311 (4.36932e-094)}
; -1.4161009380448827954523949301801621913909912109375p370 = 1.8228154453213927244092928958707489073276519775390625p-311 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110001 #b0110101010000101100101110101000010111100110110011000)))
(assert (= y (fp #b0 #b01011001000 #b1101001010100100000010000111010001001100100011110001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

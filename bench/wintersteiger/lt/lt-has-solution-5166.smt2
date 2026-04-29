(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.008989364476255534697202165261842310428619384765625p830 {- 40484498505562 830 (-7.22409e+249)}
; Y = 1.9599705708130874537431509452289901673793792724609375p-340 {+ 4323323105000463 -340 (8.75087e-103)}
; -1.008989364476255534697202165261842310428619384765625p830 < 1.9599705708130874537431509452289901673793792724609375p-340 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100111101 #b0000001001001101001000001000001001101111111101011010)))
(assert (= y (fp #b0 #b01010101011 #b1111010111000000101000011001111011000011110000001111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

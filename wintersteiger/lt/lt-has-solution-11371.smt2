(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.483698279321831847710200236178934574127197265625p913 {- 2178383390513552 913 (-1.02738e+275)}
; Y = -1.4330484896568427277685486842528916895389556884765625p-869 {- 1950277016651913 -869 (-3.64078e-262)}
; -1.483698279321831847710200236178934574127197265625p913 < -1.4330484896568427277685486842528916895389556884765625p-869 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110010000 #b0111101111010011101001101000001011010001100110010000)))
(assert (= y (fp #b1 #b00010011010 #b0110111011011100010001000000110010101000100010001001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

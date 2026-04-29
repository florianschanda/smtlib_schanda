(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6700003884662202313649004281614907085895538330078125p498 {- 3017413499834557 498 (-1.36664e+150)}
; Y = 1.8864359607855176736990188146592117846012115478515625p-174 {+ 3992152662681465 -174 (7.87812e-053)}
; -1.6700003884662202313649004281614907085895538330078125p498 < 1.8864359607855176736990188146592117846012115478515625p-174 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111110001 #b1010101110000101001001010011110011000101000010111101)))
(assert (= y (fp #b0 #b01101010001 #b1110001011101101011101111001010110010010011101111001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

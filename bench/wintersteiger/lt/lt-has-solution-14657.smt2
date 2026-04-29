(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7934360916264944219022936522378586232662200927734375p-438 {+ 3573318486591383 -438 (2.52667e-132)}
; Y = 1.819471719821861288579611937166191637516021728515625p-860 {+ 3690572532030394 -860 (2.36673e-259)}
; 1.7934360916264944219022936522378586232662200927734375p-438 < 1.819471719821861288579611937166191637516021728515625p-860 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001001001 #b1100101100011110101000001011000100000000011110010111)))
(assert (= y (fp #b0 #b00010100011 #b1101000111001000111001100000110010100001101110111010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

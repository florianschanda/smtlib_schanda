(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8237126163801995470947758803959004580974578857421875p-153 {- 3709671832190243 -153 (-1.59723e-046)}
; Y = 1.7339429878091163761411053201300092041492462158203125p263 {+ 3305385366408325 263 (2.56994e+079)}
; -1.8237126163801995470947758803959004580974578857421875p-153 = 1.7339429878091163761411053201300092041492462158203125p263 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101100110 #b1101001011011110110101000111110010100111110100100011)))
(assert (= y (fp #b0 #b10100000110 #b1011101111100011101100000000100111000100110010000101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

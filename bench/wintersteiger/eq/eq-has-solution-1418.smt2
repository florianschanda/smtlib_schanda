(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9254431918195928918891013381653465330600738525390625p-57 {- 4167825613831281 -57 (-1.33604e-017)}
; Y = -1.1914351888079968144751319414353929460048675537109375p512 {- 862147444981295 512 (-1.59745e+154)}
; -1.9254431918195928918891013381653465330600738525390625p-57 = -1.1914351888079968144751319414353929460048675537109375p512 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000110 #b1110110011101001110110000101001100101011110001110001)))
(assert (= y (fp #b1 #b10111111111 #b0011000100000001111001011000001100111011111000101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

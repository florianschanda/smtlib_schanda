(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0921608775661955093028154806233942508697509765625p331 {- 415055693865256 331 (-4.77766e+099)}
; Y = -1.640091528049726576909961295314133167266845703125p-688 {- 2882715967207760 -688 (-1.27712e-207)}
; -1.0921608775661955093028154806233942508697509765625p331 > -1.640091528049726576909961295314133167266845703125p-688 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101001010 #b0001011110010111110110101111001100011110000100101000)))
(assert (= y (fp #b1 #b00101001111 #b1010001111011101000010011101001101101011100101010000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.04126761019697511301274062134325504302978515625p-686 {+ 185852793905568 -686 (3.24329e-207)}
; Y = 1.375769192865013312854216565028764307498931884765625p-436 {+ 1692313996964186 -436 (7.75296e-132)}
; 1.04126761019697511301274062134325504302978515625p-686 = 1.375769192865013312854216565028764307498931884765625p-436 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101010001 #b0000101010010000100000111001110000101110000110100000)))
(assert (= y (fp #b0 #b01001001011 #b0110000000110010011010001110101000110011000101011010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

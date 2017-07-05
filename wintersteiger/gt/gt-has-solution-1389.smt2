(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.364462783704612380830667461850680410861968994140625p-348 {- 1641394456882506 -348 (-2.37971e-105)}
; Y = -1.1990255835582905863390124068246223032474517822265625p-944 {- 896331543950313 -944 (-8.06329e-285)}
; -1.364462783704612380830667461850680410861968994140625p-348 > -1.1990255835582905863390124068246223032474517822265625p-944 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100011 #b0101110101001101011011101101100010011110110101001010)))
(assert (= y (fp #b1 #b00001001111 #b0011001011110011010101110011010001110011001111101001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

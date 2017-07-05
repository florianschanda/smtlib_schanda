(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.952866846283366708547646339866332709789276123046875p-269 {- 4291330773855470 -269 (-2.05875e-081)}
; Y = 1.9168914759814636994406100711785256862640380859375p892 {+ 4129312109569304 892 (6.32927e+268)}
; -1.952866846283366708547646339866332709789276123046875p-269 > 1.9168914759814636994406100711785256862640380859375p892 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011110010 #b1111001111101111000101001110011000111010110011101110)))
(assert (= y (fp #b0 #b11101111011 #b1110101010111001011001100101011101010010010100011000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2918020977250568304128819363540969789028167724609375p-975 {- 1314159818580495 -975 (-4.0453e-294)}
; Y = 1.21000026907842173073959202156402170658111572265625p876 {+ 945757133569284 876 (6.09623e+263)}
; -1.2918020977250568304128819363540969789028167724609375p-975 = 1.21000026907842173073959202156402170658111572265625p876 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000110000 #b0100101010110011100010101101001010100010001000001111)))
(assert (= y (fp #b0 #b11101101011 #b0011010111000010100100111101111111010111110100000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

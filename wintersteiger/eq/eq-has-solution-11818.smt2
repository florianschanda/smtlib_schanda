(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6881765333252738425784400533302687108516693115234375p61 {+ 3099271579048823 61 (3.89267e+018)}
; Y = -1.287759190338275683274105176678858697414398193359375p524 {- 1295952182379894 524 (-7.07217e+157)}
; 1.6881765333252738425784400533302687108516693115234375p61 = -1.287759190338275683274105176678858697414398193359375p524 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000111100 #b1011000000101100010101100101100010000001101101110111)))
(assert (= y (fp #b1 #b11000001011 #b0100100110101010100101100001011110100000010101110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

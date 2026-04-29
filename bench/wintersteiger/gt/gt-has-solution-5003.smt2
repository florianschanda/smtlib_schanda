(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.949410464259818898113962859497405588626861572265625p-1 {+ 4275764613062170 -1 (0.974705)}
; Y = 1.0050051540389712823042600575718097388744354248046875p375 {+ 22541209864843 375 (7.73422e+112)}
; 1.949410464259818898113962859497405588626861572265625p-1 > 1.0050051540389712823042600575718097388744354248046875p375 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111111110 #b1111001100001100100100000110111001111001111000011010)))
(assert (= y (fp #b0 #b10101110110 #b0000000101001000000001001000110011101000101010001011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

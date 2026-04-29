(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3998737304293309424707558719092048704624176025390625p727 {+ 1800871183356785 727 (9.88316e+218)}
; Y = -1.9865700508359935838598175905644893646240234375p894 {- 4443116513319872 894 (-2.62374e+269)}
; 1.3998737304293309424707558719092048704624176025390625p727 = -1.9865700508359935838598175905644893646240234375p894 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011010110 #b0110011001011110000111111111001010111001001101110001)))
(assert (= y (fp #b1 #b11101111101 #b1111110010001111110110101101011110001101101111000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

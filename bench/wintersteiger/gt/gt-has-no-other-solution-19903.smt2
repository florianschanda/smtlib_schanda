(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3780162593871898568664846607134677469730377197265625p33 {+ 1702433884916137 33 (1.18371e+010)}
; Y = -1.3309105991982386196781362741603516042232513427734375p-384 {- 1490288851242135 -384 (-3.37777e-116)}
; 1.3780162593871898568664846607134677469730377197265625p33 > -1.3309105991982386196781362741603516042232513427734375p-384 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000100000 #b0110000011000101101011000110111101101100100110101001)))
(assert (= y (fp #b1 #b01001111111 #b0101010010110110100011101001100101110100110010010111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

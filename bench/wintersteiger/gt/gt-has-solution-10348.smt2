(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.84109164822390170002108789049088954925537109375p152 {+ 3787940033525600 152 (1.05108e+046)}
; Y = -1.4848101498773484951954060306889005005359649658203125p-86 {- 2183390810333061 -86 (-1.91907e-026)}
; 1.84109164822390170002108789049088954925537109375p152 > -1.4848101498773484951954060306889005005359649658203125p-86 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010010111 #b1101011101010001110010000100001000001111011101100000)))
(assert (= y (fp #b1 #b01110101001 #b0111110000011100100001001001101001111101111110000101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

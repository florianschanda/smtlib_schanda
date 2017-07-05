(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6824641170451302141231053610681556165218353271484375p61 {- 3073545143218183 61 (-3.8795e+018)}
; Y = 1.8629712632907191594000551049248315393924713134765625p-850 {+ 3886477059787529 -850 (2.48147e-256)}
; -1.6824641170451302141231053610681556165218353271484375p61 > 1.8629712632907191594000551049248315393924713134765625p-850 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111100 #b1010111010110101111101111110011101100111000000000111)))
(assert (= y (fp #b0 #b00010101101 #b1101110011101011101011110100100100111000101100001001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

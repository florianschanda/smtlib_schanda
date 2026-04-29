(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4575369810001308490399196671205572783946990966796875p-571 {+ 2060563377140411 -571 (1.88578e-172)}
; Y = -1.7043927513422456598846110864542424678802490234375p545 {- 3172302932467416 545 (-1.96299e+164)}
; 1.4575369810001308490399196671205572783946990966796875p-571 > -1.7043927513422456598846110864542424678802490234375p545 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111000100 #b0111010100100001001001001100001000011011001010111011)))
(assert (= y (fp #b1 #b11000100000 #b1011010001010011000101010101011010001101111011011000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

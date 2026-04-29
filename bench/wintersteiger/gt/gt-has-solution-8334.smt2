(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8224036919616157792489730127272196114063262939453125p811 {+ 3703776960666453 811 (2.48869e+244)}
; Y = -1.975730361119499622901685143006034195423126220703125p951 {- 4394298890751858 951 (-3.76057e+286)}
; 1.8224036919616157792489730127272196114063262939453125p811 > -1.975730361119499622901685143006034195423126220703125p951 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100101010 #b1101001010001001000011000110000100010101101101010101)))
(assert (= y (fp #b1 #b11110110110 #b1111100111001001011101110000011010111000111101110010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

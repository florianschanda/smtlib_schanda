(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5811975498417660812577878459705971181392669677734375p-68 {+ 2617481068896023 -68 (5.35731e-021)}
; Y = 1.7382715526530285732320635361247695982456207275390625p-405 {+ 3324879489426417 -405 (2.10363e-122)}
; 1.5811975498417660812577878459705971181392669677734375p-68 > 1.7382715526530285732320635361247695982456207275390625p-405 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110111011 #b1001010011001001010111001101010100010101111100010111)))
(assert (= y (fp #b0 #b01001101010 #b1011110011111111010111010100111000110110001111110001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

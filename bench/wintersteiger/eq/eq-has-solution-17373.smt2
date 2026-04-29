(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.35157681600965862145358187262900173664093017578125p-520 {+ 1583361217573204 -520 (3.9377e-157)}
; Y = -1.2900991540436728133300903209601528942584991455078125p54 {- 1306490442051581 54 (-2.32404e+016)}
; 1.35157681600965862145358187262900173664093017578125p-520 = -1.2900991540436728133300903209601528942584991455078125p54 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111110111 #b0101101000000000111100000010111011001011000101010100)))
(assert (= y (fp #b1 #b10000110101 #b0100101001000011111100000010101100110110111111111101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

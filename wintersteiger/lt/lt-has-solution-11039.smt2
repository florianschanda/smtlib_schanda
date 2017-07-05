(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.03558819394524181944916563224978744983673095703125p190 {- 160274976990580 190 (-1.62512e+057)}
; Y = -1.26930534614513756963560808799229562282562255859375p484 {- 1212843456548124 484 (-6.33992e+145)}
; -1.03558819394524181944916563224978744983673095703125p190 < -1.26930534614513756963560808799229562282562255859375p484 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010111101 #b0000100100011100010011101101000100011110010101110100)))
(assert (= y (fp #b1 #b10111100011 #b0100010011110001001100011111011001010100110100011100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

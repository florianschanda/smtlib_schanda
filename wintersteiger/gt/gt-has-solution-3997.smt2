(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2361243999636764012706180437817238271236419677734375p404 {- 1063409759689495 404 (-5.10717e+121)}
; Y = 1.3641649973383886962352562477462925016880035400390625p-875 {+ 1640053346314545 -875 (5.41528e-264)}
; -1.2361243999636764012706180437817238271236419677734375p404 > 1.3641649973383886962352562477462925016880035400390625p-875 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110010011 #b0011110001110010101001100000111110100001101100010111)))
(assert (= y (fp #b0 #b00010010100 #b0101110100111001111010101101000111101010100100110001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

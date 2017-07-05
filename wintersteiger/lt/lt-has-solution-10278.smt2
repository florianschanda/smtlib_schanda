(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1163523446205865230496101503376848995685577392578125p493 {- 524004375876957 493 (-2.85489e+148)}
; Y = -1.837617210893228492096795889665372669696807861328125p628 {- 3772292558857858 628 (-2.04688e+189)}
; -1.1163523446205865230496101503376848995685577392578125p493 < -1.837617210893228492096795889665372669696807861328125p628 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111101100 #b0001110111001001010001000110101011110101010101011101)))
(assert (= y (fp #b1 #b11001110011 #b1101011001101110000101001101111101011010011010000010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

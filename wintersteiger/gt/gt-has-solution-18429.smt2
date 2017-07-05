(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.3190273633224676164132915801019407808780670166015625p-1022 {- 1436771514580057 -1023 (-7.09859e-309)}
; Y = 1.6875768094245149342214062926359474658966064453125p-159 {+ 3096570662712840 -159 (2.30937e-048)}
; -0.3190273633224676164132915801019407808780670166015625p-1022 > 1.6875768094245149342214062926359474658966064453125p-159 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0101000110101011110001101111101111111111110001011001)))
(assert (= y (fp #b0 #b01101100000 #b1011000000000101000010001010010111110111011000001000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

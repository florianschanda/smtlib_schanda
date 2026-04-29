(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2067050714142084633095919343759305775165557861328125p771 {+ 930916882596621 771 (1.49875e+232)}
; Y = -1.8082988301285585208688644343055784702301025390625p-534 {- 3640254310170984 -534 (-3.21553e-161)}
; 1.2067050714142084633095919343759305775165557861328125p771 > -1.8082988301285585208688644343055784702301025390625p-534 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000010 #b0011010011101010100111111010000110100100001100001101)))
(assert (= y (fp #b1 #b00111101001 #b1100111011101100101011000001000011001100000101101000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

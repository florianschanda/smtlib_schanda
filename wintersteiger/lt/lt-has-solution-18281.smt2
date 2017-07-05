(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0868810695252701936652783842873759567737579345703125p-758 {- 391277552339557 -758 (-7.16878e-229)}
; Y = 1.9926335298170929632988190860487520694732666015625p-488 {+ 4470423994999720 -488 (2.49339e-147)}
; -1.0868810695252701936652783842873759567737579345703125p-758 < 1.9926335298170929632988190860487520694732666015625p-488 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100001001 #b0001011000111101110101100111100001000000101001100101)))
(assert (= y (fp #b0 #b01000010111 #b1111111000011101001110110010001101111010001110101000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

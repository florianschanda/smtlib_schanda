(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.904491944093702926465994096361100673675537109375p515 {- 4073469582380016 515 (-2.0428e+155)}
; Y = -1.80259750209400948506299755536019802093505859375p-678 {- 3614577811359072 -678 (-1.43735e-204)}
; -1.904491944093702926465994096361100673675537109375p515 > -1.80259750209400948506299755536019802093505859375p-678 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000000010 #b1110011110001100110010001011011101100000101111110000)))
(assert (= y (fp #b1 #b00101011001 #b1100110101110111000001111010011101011000010101100000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

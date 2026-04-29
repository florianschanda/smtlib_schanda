(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.561072858691997300439879836631007492542266845703125p-201 {- 2526847517332978 -201 (-4.85729e-061)}
; Y = -1.0549057692879550973685809367452748119831085205078125p455 {- 247273602105725 455 (-9.81435e+136)}
; -1.561072858691997300439879836631007492542266845703125p-201 = -1.0549057692879550973685809367452748119831085205078125p455 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100110110 #b1000111110100010011110001000101011000001010111110010)))
(assert (= y (fp #b1 #b10111000110 #b0000111000001110010011011111001101110100000101111101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

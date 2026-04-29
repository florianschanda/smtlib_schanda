(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.75330904741718285322349402122199535369873046875p-427 {- 3392602345242848 -427 (-5.05883e-129)}
; Y = 1.43313915250226653341769633698277175426483154296875p233 {+ 1950685325808780 233 (1.97823e+070)}
; -1.75330904741718285322349402122199535369873046875p-427 > 1.43313915250226653341769633698277175426483154296875p233 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001010100 #b1100000011011000110111001001101001110000000011100000)))
(assert (= y (fp #b0 #b10011101000 #b0110111011100010001101010001111010011101010010001100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

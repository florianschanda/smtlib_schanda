(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0484077447715887121404421122861094772815704345703125p-781 {+ 218009101315173 -781 (8.24335e-236)}
; Y = -1.43248264062226748905004569678567349910736083984375p-847 {- 1947728659150652 -847 (-1.52645e-255)}
; 1.0484077447715887121404421122861094772815704345703125p-781 > -1.43248264062226748905004569678567349910736083984375p-847 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011110010 #b0000110001100100011100110011000010101010110001100101)))
(assert (= y (fp #b1 #b00010110000 #b0110111010110111001011101010110110001111011100111100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

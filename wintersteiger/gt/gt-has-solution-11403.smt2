(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.393227405630194315477865529828704893589019775390625p770 {- 1770938797468010 770 (-8.65204e+231)}
; Y = 1.5610207448175084099517562208347953855991363525390625p-15 {+ 2526612817307249 -15 (4.76386e-005)}
; -1.393227405630194315477865529828704893589019775390625p770 > 1.5610207448175084099517562208347953855991363525390625p-15 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100000001 #b0110010010101010100011010001111100010010100101101010)))
(assert (= y (fp #b0 #b01111110000 #b1000111110011111000011100011011101011110011001110001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

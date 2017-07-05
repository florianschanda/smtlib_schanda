(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7735486871376675566125413752160966396331787109375p395 {- 3483753579146136 395 (-1.43117e+119)}
; Y = -1.2088765435837398598550862516276538372039794921875p863 {- 940696323850168 863 (-7.43478e+259)}
; -1.7735486871376675566125413752160966396331787109375p395 > -1.2088765435837398598550862516276538372039794921875p863 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001010 #b1100011000000111010010010110100100011110101110011000)))
(assert (= y (fp #b1 #b11101011110 #b0011010101111000111011101110001110010111111110111000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

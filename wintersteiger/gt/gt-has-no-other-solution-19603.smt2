(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1917064964221040224146008768002502620220184326171875p76 {+ 863369305851091 76 (9.00428e+022)}
; Y = -1.4372610161758665459075245962594635784626007080078125p-675 {- 1969248549513277 -675 (-9.16829e-204)}
; 1.1917064964221040224146008768002502620220184326171875p76 > -1.4372610161758665459075245962594635784626007080078125p-675 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001001011 #b0011000100010011101011010100110010010000010011010011)))
(assert (= y (fp #b1 #b00101011100 #b0110111111110000010101101000010001001010100000111101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

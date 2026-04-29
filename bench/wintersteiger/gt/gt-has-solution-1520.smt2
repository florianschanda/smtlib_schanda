(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2304907739107100450581810946459881961345672607421875p-527 {+ 1038038163496611 -527 (2.80073e-159)}
; Y = -1.5953806421496710132856833297410048544406890869140625p-579 {- 2681356038128865 -579 (-8.063e-175)}
; 1.2304907739107100450581810946459881961345672607421875p-527 > -1.5953806421496710132856833297410048544406890869140625p-579 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111110000 #b0011101100000001011100010111111111111001111010100011)))
(assert (= y (fp #b1 #b00110111100 #b1001100001101010110111011010001010110100010011100001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

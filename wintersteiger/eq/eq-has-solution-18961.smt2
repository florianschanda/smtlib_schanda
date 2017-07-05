(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0981811637041671847470070133567787706851959228515625p861 {- 442168652272889 861 (-1.6885e+259)}
; Y = -1.574881029074967297987086567445658147335052490234375p-348 {- 2589033988324390 -348 (-2.74669e-105)}
; -1.0981811637041671847470070133567787706851959228515625p861 = -1.574881029074967297987086567445658147335052490234375p-348 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011100 #b0001100100100010011001101001011100110001010011111001)))
(assert (= y (fp #b1 #b01010100011 #b1001001100101011011001110011001011110111110000100110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

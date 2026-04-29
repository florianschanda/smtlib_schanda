(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9376371493013346825051712585263885557651519775390625p-531 {+ 4222742316202225 -531 (2.75642e-160)}
; Y = -1.2919763079151007634237657839548774063587188720703125p988 {- 1314944391527461 988 (-3.37979e+297)}
; 1.9376371493013346825051712585263885557651519775390625p-531 < -1.2919763079151007634237657839548774063587188720703125p988 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101100 #b1111000000001000111111001111101111000011100011110001)))
(assert (= y (fp #b1 #b11111011011 #b0100101010111110111101011001010110110011110000100101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

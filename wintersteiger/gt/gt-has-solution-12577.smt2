(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6267814537489204695930311572737991809844970703125p-972 {- 2822772721546376 -972 (-4.07543e-293)}
; Y = 1.8022300299377465027106381967314518988132476806640625p-305 {+ 3612922863893057 -305 (2.76479e-092)}
; -1.6267814537489204695930311572737991809844970703125p-972 > 1.8022300299377465027106381967314518988132476806640625p-305 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000110011 #b1010000001110100101111111101010110010111010010001000)))
(assert (= y (fp #b0 #b01011001110 #b1100110101011110111100100111111001110011101001000001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

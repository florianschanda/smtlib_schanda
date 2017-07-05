(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0726137867136789072475266948458738625049591064453125p-196 {- 327023422785685 -196 (-1.06798e-059)}
; Y = 1.9317778350921044339116861010552383959293365478515625p-973 {+ 4196354310912889 -973 (2.41976e-293)}
; -1.0726137867136789072475266948458738625049591064453125p-196 < 1.9317778350921044339116861010552383959293365478515625p-973 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100111011 #b0001001010010110110100010010111100101100100010010101)))
(assert (= y (fp #b0 #b00000110010 #b1110111010001000111111100000000011011011101101111001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

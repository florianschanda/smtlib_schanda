(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9602852019520391468887510200147517025470733642578125p942 {- 4324740077680605 942 (-7.28744e+283)}
; Y = -1.9535701314464735123266336813685484230518341064453125p-937 {- 4294498088653973 -937 (-1.6816e-282)}
; -1.9602852019520391468887510200147517025470733642578125p942 < -1.9535701314464735123266336813685484230518341064453125p-937 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110101101 #b1111010111010101010000000100000100110111011111011101)))
(assert (= y (fp #b1 #b00001010110 #b1111010000011101001011000001000100000001010010010101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

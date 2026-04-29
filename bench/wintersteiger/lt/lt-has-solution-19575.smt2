(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8075859449683833179989278505672700703144073486328125p534 {- 3637043760829261 534 (-1.01652e+161)}
; Y = -1.253580181307787366762340752757154405117034912109375p-171 {- 1142023610046294 -171 (-4.18816e-052)}
; -1.8075859449683833179989278505672700703144073486328125p534 < -1.253580181307787366762340752757154405117034912109375p-171 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000010101 #b1100111010111101111100111101011001011001001101001101)))
(assert (= y (fp #b1 #b01101010100 #b0100000011101010101000010111100110100001011101010110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

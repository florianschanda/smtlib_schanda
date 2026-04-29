(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7536144243213447335705268415040336549282073974609375p-997 {- 3393977640554639 -997 (-1.30927e-300)}
; Y = 1.1073366973307556815342422851244919002056121826171875p-768 {+ 483401510101971 -768 (7.13252e-232)}
; -1.7536144243213447335705268415040336549282073974609375p-997 > 1.1073366973307556815342422851244919002056121826171875p-768 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000011010 #b1100000011101100110111111111101001000001000010001111)))
(assert (= y (fp #b0 #b00011111111 #b0001101101111010011010101111010010110010001111010011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

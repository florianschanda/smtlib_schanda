(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9796757506153499495127334739663638174533843994140625p-177 {+ 4412067345415201 -177 (1.03344e-053)}
; Y = 1.0314508548469867310615200040047056972980499267578125p-559 {+ 141642058169373 -559 (5.46614e-169)}
; 1.9796757506153499495127334739663638174533843994140625p-177 < 1.0314508548469867310615200040047056972980499267578125p-559 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101001110 #b1111101011001100000001111010110110010011110000100001)))
(assert (= y (fp #b0 #b00111010000 #b0000100000001101001010011100100011111111110000011101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.94986326078627048019598078099079430103302001953125p752 {+ 4277803827329972 752 (4.61914e+226)}
; Y = -1.9149189282388487942654364815098233520984649658203125p592 {- 4120428544290693 592 (-3.1039e+178)}
; 1.94986326078627048019598078099079430103302001953125p752 < -1.9149189282388487942654364815098233520984649658203125p592 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011101111 #b1111001100101010001111010001100010111111101110110100)))
(assert (= y (fp #b1 #b11001001111 #b1110101000111000001000000111101101000110111110000101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

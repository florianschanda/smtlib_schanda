(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8117168532394940516638826011330820620059967041015625p-108 {- 3655647717779737 -108 (-5.58278e-033)}
; Y = -1.515586199143090340157868922688066959381103515625p-1015 {- 2321993814338192 -1015 (-4.31653e-306)}
; -1.8117168532394940516638826011330820620059967041015625p-108 < -1.515586199143090340157868922688066959381103515625p-1015 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110010011 #b1100111111001100101011001111101001000110100100011001)))
(assert (= y (fp #b1 #b00000001000 #b1000001111111101011101010000011110010110101010010000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

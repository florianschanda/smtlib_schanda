(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7050075136327025315807759398012422025203704833984375p-810 {- 3175071575689639 -810 (-2.49706e-244)}
; Y = -1.035555939706334083183492111857049167156219482421875p-648 {- 160129716812254 -648 (-8.86618e-196)}
; -1.7050075136327025315807759398012422025203704833984375p-810 > -1.035555939706334083183492111857049167156219482421875p-648 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011010101 #b1011010001111011010111110101011001111100100110100111)))
(assert (= y (fp #b1 #b00101110111 #b0000100100011010001100011010111000110111100111011110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

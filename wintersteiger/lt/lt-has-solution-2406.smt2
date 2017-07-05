(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.93500108718590890788391334353946149349212646484375p312 {- 4210870547841468 312 (-1.61451e+094)}
; Y = 1.95651339450071848347079139784909784793853759765625p286 {+ 4307753367048324 286 (2.43255e+086)}
; -1.93500108718590890788391334353946149349212646484375p312 < 1.95651339450071848347079139784909784793853759765625p286 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100110111 #b1110111101011100001110110011001100110000000110111100)))
(assert (= y (fp #b0 #b10100011101 #b1111010011011110000011111101001110010001000010000100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

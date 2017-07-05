(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.06767302301152877674894625670276582241058349609375p-237 {+ 304772201217756 -237 (4.83425e-072)}
; Y = -1.0622771734241365226836251167696900665760040283203125p-387 {- 280471455026629 -387 (-3.37e-117)}
; 1.06767302301152877674894625670276582241058349609375p-237 < -1.0622771734241365226836251167696900665760040283203125p-387 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100010010 #b0001000101010011000001001110110010100111111011011100)))
(assert (= y (fp #b1 #b01001111100 #b0000111111110001011001011001011100100100110111000101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

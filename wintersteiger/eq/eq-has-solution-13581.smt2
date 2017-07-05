(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9313032738876925176185750387958250939846038818359375p366 {- 4194217077249535 366 (-2.90288e+110)}
; Y = 1.953863533199654778371723296004347503185272216796875p-496 {+ 4295819452680270 -496 (9.55029e-150)}
; -1.9313032738876925176185750387958250939846038818359375p366 = 1.953863533199654778371723296004347503185272216796875p-496 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101101101 #b1110111001101001111001000011000000000001010111111111)))
(assert (= y (fp #b0 #b01000001111 #b1111010000110000011001101000011111110000100001001110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

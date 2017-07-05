(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1402473915420483496774295417708344757556915283203125p-974 {+ 631618100288453 -974 (7.1414e-294)}
; Y = 1.0415605056503560721381518305861391127109527587890625p508 {+ 187171877760273 508 (8.72815e+152)}
; 1.1402473915420483496774295417708344757556915283203125p-974 / 1.0415605056503560721381518305861391127109527587890625p508 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000110001 #b0010001111100111010000001100100000000101101111000101)))
(assert (= y (fp #b0 #b10111111011 #b0000101010100011101101011001010010010010110100010001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

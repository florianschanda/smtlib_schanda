(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 0.8342920024447568749792480957694351673126220703125p-1022 {+ 3757317151328392 -1023 (1.85636e-308)}
; Y = 1.241604999990002067278282993356697261333465576171875p-58 {+ 1088092187925822 -58 (4.30768e-018)}
; 0.8342920024447568749792480957694351673126220703125p-1022 = 1.241604999990002067278282993356697261333465576171875p-58 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b1101010110010100001010010010000111010000100010001000)))
(assert (= y (fp #b0 #b01111000101 #b0011110111011001110100110100010110000001110100111110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

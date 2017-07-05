(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.68755697669104165470344014465808868408203125p399 {- 3096481344021760 399 (-2.17885e+120)}
; Y = -1.74076679781503518285035170265473425388336181640625p-784 {- 3336117074608228 -784 (-1.7109e-236)}
; -1.68755697669104165470344014465808868408203125p399 < -1.74076679781503518285035170265473425388336181640625p-784 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001110 #b1011000000000011101110111110100100000110010100000000)))
(assert (= y (fp #b1 #b00011101111 #b1011110110100010111001001001001010010100000001100100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

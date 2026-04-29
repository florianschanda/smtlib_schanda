(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5278158439752633768193845753557980060577392578125p162 {- 2377071238247240 162 (-8.93162e+048)}
; Y = -1.637723516275417789955781699973158538341522216796875p271 {- 2872051390263374 271 (-6.21397e+081)}
; -1.5278158439752633768193845753557980060577392578125p162 < -1.637723516275417789955781699973158538341522216796875p271 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010100001 #b1000011100011110111100000110110000101111001101001000)))
(assert (= y (fp #b1 #b10100001110 #b1010001101000001110110010010111001001011000001001110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

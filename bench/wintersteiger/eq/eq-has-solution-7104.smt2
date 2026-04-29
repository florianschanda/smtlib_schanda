(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.38110112602254897495868135592900216579437255859375p130 {- 1716326889145628 130 (-1.87986e+039)}
; Y = 1.3214644481387101127012329015997238457202911376953125p21 {+ 1447747168850357 21 (2.77131e+006)}
; -1.38110112602254897495868135592900216579437255859375p130 = 1.3214644481387101127012329015997238457202911376953125p21 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010000001 #b0110000110001111110101111110100010111100010100011100)))
(assert (= y (fp #b0 #b10000010100 #b0101001001001011011111100111101110010101000110110101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

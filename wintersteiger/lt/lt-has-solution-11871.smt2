(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6133413514354852935639428324066102504730224609375p-2 {- 2762243881775768 -2 (-0.403335)}
; Y = 1.6752140872152254669202875447808764874935150146484375p299 {+ 3040893911577799 299 (1.70624e+090)}
; -1.6133413514354852935639428324066102504730224609375p-2 < 1.6752140872152254669202875447808764874935150146484375p299 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111111101 #b1001110100000011111100000101010110110011001010011000)))
(assert (= y (fp #b0 #b10100101010 #b1010110011011010110101001001011001100011010011000111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

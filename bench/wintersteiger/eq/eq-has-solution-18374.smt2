(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.71286867350650684471702334121800959110260009765625p57 {+ 3210475092368004 57 (2.4685e+017)}
; Y = -1.1174374778587736756207959842868149280548095703125p-565 {- 528891381524104 -565 (-9.25285e-171)}
; 1.71286867350650684471702334121800959110260009765625p57 = -1.1174374778587736756207959842868149280548095703125p-565 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000111000 #b1011011001111110100011111011011100001101101010000100)))
(assert (= y (fp #b1 #b00111001010 #b0001111000010000011000011110111010111010011010001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

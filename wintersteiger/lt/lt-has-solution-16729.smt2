(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.58474777234465680209041238413192331790924072265625p-79 {- 2633469849637124 -79 (-2.62175e-024)}
; Y = -1.216632024376561371781235720845870673656463623046875p-718 {- 975623904258798 -718 (-8.82312e-217)}
; -1.58474777234465680209041238413192331790924072265625p-79 < -1.216632024376561371781235720845870673656463623046875p-718 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110110000 #b1001010110110010000001111010111010100001000100000100)))
(assert (= y (fp #b1 #b00100110001 #b0011011101110101001100100100001111110110101011101110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

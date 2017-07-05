(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5860789943807862556468535331077873706817626953125p-367 {- 2639465140702984 -367 (-5.27614e-111)}
; Y = 1.523161510656055650514417720842175185680389404296875p318 {+ 2356109984445198 318 (8.13363e+095)}
; -1.5860789943807862556468535331077873706817626953125p-367 > 1.523161510656055650514417720842175185680389404296875p318 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010010000 #b1001011000001001010001011110000110111100111100001000)))
(assert (= y (fp #b0 #b10100111101 #b1000010111101101111010011010101011001011001100001110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

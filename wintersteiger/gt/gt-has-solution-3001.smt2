(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5991734381741762316408994593075476586818695068359375p-23 {+ 2698437272891519 -23 (1.90636e-007)}
; Y = 1.476412662055308633313188693136908113956451416015625p397 {+ 2145571887306874 397 (4.76558e+119)}
; 1.5991734381741762316408994593075476586818695068359375p-23 > 1.476412662055308633313188693136908113956451416015625p397 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111101000 #b1001100101100011011011100011000110010111000001111111)))
(assert (= y (fp #b0 #b10110001100 #b0111100111110110001011100010001011101101100001111010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

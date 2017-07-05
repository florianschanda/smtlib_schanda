(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9582300804214505252076605756883509457111358642578125p-1003 {- 4315484633121245 -1003 (-2.28443e-302)}
; Y = 1.0852143242803224953973995070555247366428375244140625p272 {+ 383771199075489 272 (8.2352e+081)}
; -1.9582300804214505252076605756883509457111358642578125p-1003 / 1.0852143242803224953973995070555247366428375244140625p272 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000010100 #b1111010101001110100100010000100101110100000111011101)))
(assert (= y (fp #b0 #b10100001111 #b0001010111010000100110110001111111101111010010100001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

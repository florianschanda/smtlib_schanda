(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6478569744292748122660441367770545184612274169921875p395 {+ 2917688428629059 395 (1.32974e+119)}
; Y = 1.2914997432424815126950079502421431243419647216796875p271 {+ 1312798135045435 271 (4.90031e+081)}
; 1.6478569744292748122660441367770545184612274169921875p395 < 1.2914997432424815126950079502421431243419647216796875p271 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110001010 #b1010010111011001111101000110010110101000110001000011)))
(assert (= y (fp #b0 #b10100001110 #b0100101010011111101110100010100000000100110100111011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

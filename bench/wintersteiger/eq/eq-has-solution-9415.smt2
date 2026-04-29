(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2808862604466650925161275154096074402332305908203125p-428 {+ 1264999257881093 -428 (1.84787e-129)}
; Y = -1.858060736304079085812190896831452846527099609375p-263 {- 3864362012280304 -263 (-1.25363e-079)}
; 1.2808862604466650925161275154096074402332305908203125p-428 = -1.858060736304079085812190896831452846527099609375p-263 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010011 #b0100011111101000001010010111011010000011101000000101)))
(assert (= y (fp #b1 #b01011111000 #b1101101110101001110111100101000001101000010111110000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

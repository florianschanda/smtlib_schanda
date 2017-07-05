(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.458968892826984831145864518475718796253204345703125p-382 {- 2067012134710258 -382 (-1.48111e-115)}
; Y = -1.2762517037862985969098872374161146581172943115234375p-75 {- 1244127070232439 -75 (-3.37821e-023)}
; -1.458968892826984831145864518475718796253204345703125p-382 - -1.2762517037862985969098872374161146581172943115234375p-75 == 1.276251703786298374865282312384806573390960693359375p-75
; [HW: 1.276251703786298374865282312384806573390960693359375p-75] 

; mpf : + 1244127070232438 -75
; mpfd: + 1244127070232438 -75 (3.37821e-023) class: Pos. norm. non-zero
; hwf : + 1244127070232438 -75 (3.37821e-023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010000001 #b0111010101111110111111000100000010010010101111110010)))
(assert (= y (fp #b1 #b01110110100 #b0100011010111000011011101000000100111001111101110111)))
(assert (= r (fp #b0 #b01110110100 #b0100011010111000011011101000000100111001111101110110)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)

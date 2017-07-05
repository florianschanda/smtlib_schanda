(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2875862006259393144347313864273019134998321533203125p-127 {- 1295173105975877 -127 (-7.56775e-039)}
; Y = 1.853320592849304393467946283635683357715606689453125p-1022 {+ 3843014303983698 -1022 (4.12378e-308)}
; -1.2875862006259393144347313864273019134998321533203125p-127 / 1.853320592849304393467946283635683357715606689453125p-1022 == -1.3894910633312480552348233686643652617931365966796875p894
; [HW: -1.3894910633312480552348233686643652617931365966796875p894] 

; mpf : - 1754111807682747 894
; mpfd: - 1754111807682747 894 (-1.83515e+269) class: Neg. norm. non-zero
; hwf : - 1754111807682747 894 (-1.83515e+269) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110000000 #b0100100110011111001111111100111001111000001001000101)))
(assert (= y (fp #b0 #b00000000001 #b1101101001110011001101111110011101001010100001010010)))
(assert (= r (fp #b1 #b11101111101 #b0110001110110101101011111011001100010111100010111011)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)

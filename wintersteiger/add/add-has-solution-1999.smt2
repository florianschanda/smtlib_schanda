(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2521850911677201434457629147800616919994354248046875p-247 {- 1135740682611339 -247 (-5.53681e-075)}
; Y = -1.945364928142052196591293977689929306507110595703125p-343 {- 4257545138109682 -343 (-1.08571e-103)}
; -1.2521850911677201434457629147800616919994354248046875p-247 + -1.945364928142052196591293977689929306507110595703125p-343 == -1.2521850911677201434457629147800616919994354248046875p-247
; [HW: -1.2521850911677201434457629147800616919994354248046875p-247] 

; mpf : - 1135740682611339 -247
; mpfd: - 1135740682611339 -247 (-5.53681e-075) class: Neg. norm. non-zero
; hwf : - 1135740682611339 -247 (-5.53681e-075) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100001000 #b0100000010001111001100111011111100011010101010001011)))
(assert (= y (fp #b1 #b01010101000 #b1111001000000011011011111001100100100111110011110010)))
(assert (= r (fp #b1 #b01100001000 #b0100000010001111001100111011111100011010101010001011)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)

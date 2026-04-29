(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.876076999524394661733595057739876210689544677734375p-1022 {- 3945500048605926 -1023 (-1.94934e-308)}
; Y = -1.8058332874149780611361393312108702957630157470703125p-967 {- 3629150492924837 -967 (-1.44768e-291)}
; -0.876076999524394661733595057739876210689544677734375p-1022 * -1.8058332874149780611361393312108702957630157470703125p-967 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b1110000001000110100101010000110110111100001011100110)))
(assert (= y (fp #b1 #b00000111000 #b1100111001001011000101110001111101111001101110100101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

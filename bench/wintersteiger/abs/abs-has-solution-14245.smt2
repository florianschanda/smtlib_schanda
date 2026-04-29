(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6178663516633033925273821296286769211292266845703125p-341 {+ 2782622671115621 -341 (3.61172e-103)}
; 1.6178663516633033925273821296286769211292266845703125p-341 | == 1.6178663516633033925273821296286769211292266845703125p-341
; [HW: 1.6178663516633033925273821296286769211292266845703125p-341] 

; mpf : + 2782622671115621 -341
; mpfd: + 2782622671115621 -341 (3.61172e-103) class: Pos. norm. non-zero
; hwf : + 2782622671115621 -341 (3.61172e-103) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010101010 #b1001111000101100011111010011110110110001010101100101)))
(assert (= r (fp #b0 #b01010101010 #b1001111000101100011111010011110110110001010101100101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

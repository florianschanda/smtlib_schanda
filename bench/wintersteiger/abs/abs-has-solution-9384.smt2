(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3317091227780963880178433100809343159198760986328125p-499 {+ 1493885081738829 -499 (8.13657e-151)}
; 1.3317091227780963880178433100809343159198760986328125p-499 | == 1.3317091227780963880178433100809343159198760986328125p-499
; [HW: 1.3317091227780963880178433100809343159198760986328125p-499] 

; mpf : + 1493885081738829 -499
; mpfd: + 1493885081738829 -499 (8.13657e-151) class: Pos. norm. non-zero
; hwf : + 1493885081738829 -499 (8.13657e-151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000001100 #b0101010011101010111000111001101000011101111001001101)))
(assert (= r (fp #b0 #b01000001100 #b0101010011101010111000111001101000011101111001001101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

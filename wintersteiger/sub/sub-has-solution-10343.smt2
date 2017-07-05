(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.114508593812290282443200339912436902523040771484375p-270 {+ 515700860423750 -270 (5.87469e-082)}
; Y = -zero {- 0 -1023 (-0)}
; 1.114508593812290282443200339912436902523040771484375p-270 - -zero == 1.114508593812290282443200339912436902523040771484375p-270
; [HW: 1.114508593812290282443200339912436902523040771484375p-270] 

; mpf : + 515700860423750 -270
; mpfd: + 515700860423750 -270 (5.87469e-082) class: Pos. norm. non-zero
; hwf : + 515700860423750 -270 (5.87469e-082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011110001 #b0001110101010000011011110110100110001000111001000110)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b01011110001 #b0001110101010000011011110110100110001000111001000110)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)

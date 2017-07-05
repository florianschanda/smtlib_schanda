(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.871930806531852287122319467016495764255523681640625p-499 {- 3926827255389706 -499 (-1.14373e-150)}
; Y = -1.9997713687290168405041868027183227241039276123046875p-858 {- 4502569963663691 -858 (-1.0405e-258)}
; -1.871930806531852287122319467016495764255523681640625p-499 - -1.9997713687290168405041868027183227241039276123046875p-858 == -1.8719308065318520650777145419851876795291900634765625p-499
; [HW: -1.8719308065318520650777145419851876795291900634765625p-499] 

; mpf : - 3926827255389705 -499
; mpfd: - 3926827255389705 -499 (-1.14373e-150) class: Neg. norm. non-zero
; hwf : - 3926827255389705 -499 (-1.14373e-150) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000001100 #b1101111100110110110110110111101001101101111000001010)))
(assert (= y (fp #b1 #b00010100101 #b1111111111110001000001000011010000101011000101001011)))
(assert (= r (fp #b1 #b01000001100 #b1101111100110110110110110111101001101101111000001001)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)

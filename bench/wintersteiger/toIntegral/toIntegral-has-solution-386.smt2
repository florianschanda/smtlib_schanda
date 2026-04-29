(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2586787941321075923184480416239239275455474853515625 531 {+ 1164985720862009 531 (8.84795e+159)}
; 1.2586787941321075923184480416239239275455474853515625 531 I == 1.2586787941321075923184480416239239275455474853515625 531
; [HW: 1.2586787941321075923184480416239239275455474853515625 531] 

; mpf : + 1164985720862009 531
; mpfd: + 1164985720862009 531 (8.84795e+159) class: Pos. norm. non-zero
; hwf : + 1164985720862009 531 (8.84795e+159) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010010 #b0100001000111000110001100000000011110111010100111001)))
(assert (= r (fp #b0 #b11000010010 #b0100001000111000110001100000000011110111010100111001)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

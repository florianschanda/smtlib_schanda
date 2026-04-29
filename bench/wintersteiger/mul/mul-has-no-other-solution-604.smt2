(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.788566760795263999028748003183864057064056396484375p-980 {- 3551388970074310 -980 (-1.75029e-295)}
; Y = 1.616484590604360338517153650172986090183258056640625p-583 {+ 2776399772525450 -583 (5.10604e-176)}
; -1.788566760795263999028748003183864057064056396484375p-980 * 1.616484590604360338517153650172986090183258056640625p-583 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000101011 #b1100100111011111100000101110000001010100000011000110)))
(assert (= y (fp #b0 #b00110111000 #b1001110111010001111011110010001100100010001110001010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

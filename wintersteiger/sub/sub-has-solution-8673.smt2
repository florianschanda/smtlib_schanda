(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 0.6192523172529986741352558965445496141910552978515625p-1022 {+ 2788864505228921 -1023 (1.37788e-308)}
; Y = +zero {+ 0 -1023 (0)}
; 0.6192523172529986741352558965445496141910552978515625p-1022 - +zero == 0.6192523172529986741352558965445496141910552978515625p-1022
; [HW: 0.6192523172529986741352558965445496141910552978515625p-1022] 

; mpf : + 2788864505228921 -1023
; mpfd: + 2788864505228921 -1023 (1.37788e-308) class: Pos. denorm.
; hwf : + 2788864505228921 -1023 (1.37788e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1001111010000111010100011110001010010010111001111001)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b00000000000 #b1001111010000111010100011110001010010010111001111001)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)

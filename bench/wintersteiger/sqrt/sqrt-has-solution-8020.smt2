(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2987171712882121799026435837731696665287017822265625p-83 {+ 1345302541302761 -83 (1.34284e-025)}
; 1.2987171712882121799026435837731696665287017822265625p-83 S == 1.6116557767018442337558781218831427395343780517578125p-42
; [HW: 1.6116557767018442337558781218831427395343780517578125p-42] 

; mpf : + 2754652728033437 -42
; mpfd: + 2754652728033437 -42 (3.66448e-013) class: Pos. norm. non-zero
; hwf : + 2754652728033437 -42 (3.66448e-013) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110101100 #b0100110001111000101110101000000101101111101111101001)))
(assert (= r (fp #b0 #b01111010101 #b1001110010010101011110010001010101011000000010011101)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)

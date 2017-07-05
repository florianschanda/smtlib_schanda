(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.186034141137882524930091676651500165462493896484375p383 {+ 837823288706758 383 (2.33661e+115)}
; Y = 1.3720672127064126311069003349984996020793914794921875p-132 {+ 1675641760501379 -132 (2.52009e-040)}
; 1.186034141137882524930091676651500165462493896484375p383 - 1.3720672127064126311069003349984996020793914794921875p-132 == 1.186034141137882524930091676651500165462493896484375p383
; [HW: 1.186034141137882524930091676651500165462493896484375p383] 

; mpf : + 837823288706758 383
; mpfd: + 837823288706758 383 (2.33661e+115) class: Pos. norm. non-zero
; hwf : + 837823288706758 383 (2.33661e+115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101111110 #b0010111110011111111011101111100000100000011011000110)))
(assert (= y (fp #b0 #b01101111011 #b0101111100111111110010111111111001111100111010000011)))
(assert (= r (fp #b0 #b10101111110 #b0010111110011111111011101111100000100000011011000110)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

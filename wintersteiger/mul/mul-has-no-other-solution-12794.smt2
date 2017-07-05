(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.550910346155083718855394181446172297000885009765625p-170 {- 2481079629658586 -170 (-1.0363e-051)}
; Y = 0.49232074896621913495664557558484375476837158203125p-1022 {+ 2217215541591028 -1023 (1.09545e-308)}
; -1.550910346155083718855394181446172297000885009765625p-170 * 0.49232074896621913495664557558484375476837158203125p-1022 == -zero
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
(assert (= x (fp #b1 #b01101010101 #b1000110100001000011101011101111111000011100111011010)))
(assert (= y (fp #b0 #b00000000000 #b0111111000001000101110111000101111110011101111110100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)

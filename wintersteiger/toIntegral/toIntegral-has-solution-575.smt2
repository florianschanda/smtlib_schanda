(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3785091924166785748440133829717524349689483642578125 129 {- 1704653857924061 129 (-9.38165e+038)}
; -1.3785091924166785748440133829717524349689483642578125 129 I == -1.3785091924166785748440133829717524349689483642578125 129
; [HW: -1.3785091924166785748440133829717524349689483642578125 129] 

; mpf : - 1704653857924061 129
; mpfd: - 1704653857924061 129 (-9.38165e+038) class: Neg. norm. non-zero
; hwf : - 1704653857924061 129 (-9.38165e+038) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010000000 #b0110000011100101111110100111101010101010001111011101)))
(assert (= r (fp #b1 #b10010000000 #b0110000011100101111110100111101010101010001111011101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0710263197247027466829649711144156754016876220703125 379 {- 319874107045669 379 (-1.31877e+114)}
; -1.0710263197247027466829649711144156754016876220703125 379 I == -1.0710263197247027466829649711144156754016876220703125 379
; [HW: -1.0710263197247027466829649711144156754016876220703125 379] 

; mpf : - 319874107045669 379
; mpfd: - 319874107045669 379 (-1.31877e+114) class: Neg. norm. non-zero
; hwf : - 319874107045669 379 (-1.31877e+114) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101111010 #b0001001000101110110001111110100001011111011100100101)))
(assert (= r (fp #b1 #b10101111010 #b0001001000101110110001111110100001011111011100100101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

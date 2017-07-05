(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.08826993172597230596920780953951179981231689453125 6 {- 397532431629108 6 (-69.6493)}
; -1.08826993172597230596920780953951179981231689453125 6 I == -1.09375 6
; [HW: -1.09375 6] 

; mpf : - 422212465065984 6
; mpfd: - 422212465065984 6 (-70) class: Neg. norm. non-zero
; hwf : - 422212465065984 6 (-70) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000000101 #b0001011010011000110110111011010111111011101100110100)))
(assert (= r (fp #b1 #b10000000101 #b0001100000000000000000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

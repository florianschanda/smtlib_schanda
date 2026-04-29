(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.017340391787441955528947801212780177593231201171875 436 {- 78094181992382 436 (-1.80528e+131)}
; -1.017340391787441955528947801212780177593231201171875 436 I == -1.017340391787441955528947801212780177593231201171875 436
; [HW: -1.017340391787441955528947801212780177593231201171875 436] 

; mpf : - 78094181992382 436
; mpfd: - 78094181992382 436 (-1.80528e+131) class: Neg. norm. non-zero
; hwf : - 78094181992382 436 (-1.80528e+131) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110110011 #b0000010001110000011010110111111110100000011110111110)))
(assert (= r (fp #b1 #b10110110011 #b0000010001110000011010110111111110100000011110111110)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

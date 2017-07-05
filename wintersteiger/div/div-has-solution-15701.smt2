(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.391326948721525180729940984747372567653656005859375p-410 {+ 1762379900442294 -410 (5.26176e-124)}
; Y = -1.8469190814502975950261998150381259620189666748046875p901 {- 3814184459632523 901 (-3.1223e+271)}
; 1.391326948721525180729940984747372567653656005859375p-410 / -1.8469190814502975950261998150381259620189666748046875p901 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001100101 #b0110010000101110000000001011111011001101011010110110)))
(assert (= y (fp #b1 #b11110000100 #b1101100011001111101100000101110100101111111110001011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

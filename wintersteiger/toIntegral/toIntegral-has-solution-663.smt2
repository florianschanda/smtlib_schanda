(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4374584769920126792186465536360628902912139892578125 293 {- 1970137833971293 293 (-2.28762e+088)}
; -1.4374584769920126792186465536360628902912139892578125 293 I == -1.4374584769920126792186465536360628902912139892578125 293
; [HW: -1.4374584769920126792186465536360628902912139892578125 293] 

; mpf : - 1970137833971293 293
; mpfd: - 1970137833971293 293 (-2.28762e+088) class: Neg. norm. non-zero
; hwf : - 1970137833971293 293 (-2.28762e+088) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100100 #b0110111111111101010001110101110000001001111001011101)))
(assert (= r (fp #b1 #b10100100100 #b0110111111111101010001110101110000001001111001011101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

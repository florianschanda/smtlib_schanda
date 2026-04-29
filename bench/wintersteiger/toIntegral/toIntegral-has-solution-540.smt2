(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.67913325449082773133113732910715043544769287109375 1015 {- 3058544271859804 1015 (-5.89564e+305)}
; -1.67913325449082773133113732910715043544769287109375 1015 I == -1.67913325449082773133113732910715043544769287109375 1015
; [HW: -1.67913325449082773133113732910715043544769287109375 1015] 

; mpf : - 3058544271859804 1015
; mpfd: - 3058544271859804 1015 (-5.89564e+305) class: Neg. norm. non-zero
; hwf : - 3058544271859804 1015 (-5.89564e+305) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110110 #b1010110111011011101011010100110110101010000001011100)))
(assert (= r (fp #b1 #b11111110110 #b1010110111011011101011010100110110101010000001011100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

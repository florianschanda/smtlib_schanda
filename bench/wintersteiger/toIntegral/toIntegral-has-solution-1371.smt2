(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.377715331536794263200818022596649825572967529296875 445 {- 1701078626361230 445 (-1.25172e+134)}
; -1.377715331536794263200818022596649825572967529296875 445 I == -1.377715331536794263200818022596649825572967529296875 445
; [HW: -1.377715331536794263200818022596649825572967529296875 445] 

; mpf : - 1701078626361230 445
; mpfd: - 1701078626361230 445 (-1.25172e+134) class: Neg. norm. non-zero
; hwf : - 1701078626361230 445 (-1.25172e+134) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110111100 #b0110000010110001111100111011010000100101111110001110)))
(assert (= r (fp #b1 #b10110111100 #b0110000010110001111100111011010000100101111110001110)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4616962562829247662676834806916303932666778564453125 475 {- 2079295087754133 475 (-1.42595e+143)}
; -1.4616962562829247662676834806916303932666778564453125 475 I == -1.4616962562829247662676834806916303932666778564453125 475
; [HW: -1.4616962562829247662676834806916303932666778564453125 475] 

; mpf : - 2079295087754133 475
; mpfd: - 2079295087754133 475 (-1.42595e+143) class: Neg. norm. non-zero
; hwf : - 2079295087754133 475 (-1.42595e+143) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111011010 #b0111011000110001101110011101000101101011101110010101)))
(assert (= r (fp #b1 #b10111011010 #b0111011000110001101110011101000101101011101110010101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

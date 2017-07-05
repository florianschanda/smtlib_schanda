(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4021509117328083693365670114872045814990997314453125 188 {- 1811126696226581 188 (-5.5009e+056)}
; -1.4021509117328083693365670114872045814990997314453125 188 I == -1.4021509117328083693365670114872045814990997314453125 188
; [HW: -1.4021509117328083693365670114872045814990997314453125 188] 

; mpf : - 1811126696226581 188
; mpfd: - 1811126696226581 188 (-5.5009e+056) class: Neg. norm. non-zero
; hwf : - 1811126696226581 188 (-5.5009e+056) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111011 #b0110011011110011010111001011010111110010111100010101)))
(assert (= r (fp #b1 #b10010111011 #b0110011011110011010111001011010111110010111100010101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

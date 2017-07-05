(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2538337844917368801844759218511171638965606689453125 749 {- 1143165737251029 749 (-3.71284e+225)}
; -1.2538337844917368801844759218511171638965606689453125 749 I == -1.2538337844917368801844759218511171638965606689453125 749
; [HW: -1.2538337844917368801844759218511171638965606689453125 749] 

; mpf : - 1143165737251029 749
; mpfd: - 1143165737251029 749 (-3.71284e+225) class: Neg. norm. non-zero
; hwf : - 1143165737251029 749 (-3.71284e+225) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011101100 #b0100000011111011010000000011101100000011000011010101)))
(assert (= r (fp #b1 #b11011101100 #b0100000011111011010000000011101100000011000011010101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

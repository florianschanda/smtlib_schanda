(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.976910403912740310516937825013883411884307861328125 802 {- 4399613331035778 802 (-5.27283e+241)}
; -1.976910403912740310516937825013883411884307861328125 802 I == -1.976910403912740310516937825013883411884307861328125 802
; [HW: -1.976910403912740310516937825013883411884307861328125 802] 

; mpf : - 4399613331035778 802
; mpfd: - 4399613331035778 802 (-5.27283e+241) class: Neg. norm. non-zero
; hwf : - 4399613331035778 802 (-5.27283e+241) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100100001 #b1111101000010110110011001101101111101101011010000010)))
(assert (= r (fp #b1 #b11100100001 #b1111101000010110110011001101101111101101011010000010)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

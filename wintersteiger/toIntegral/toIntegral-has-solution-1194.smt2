(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6940215229121287077163060530438087880611419677734375 664 {- 3125595071974167 664 (-1.29669e+200)}
; -1.6940215229121287077163060530438087880611419677734375 664 I == -1.6940215229121287077163060530438087880611419677734375 664
; [HW: -1.6940215229121287077163060530438087880611419677734375 664] 

; mpf : - 3125595071974167 664
; mpfd: - 3125595071974167 664 (-1.29669e+200) class: Neg. norm. non-zero
; hwf : - 3125595071974167 664 (-1.29669e+200) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010010111 #b1011000110101011011001001111111110100000101100010111)))
(assert (= r (fp #b1 #b11010010111 #b1011000110101011011001001111111110100000101100010111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

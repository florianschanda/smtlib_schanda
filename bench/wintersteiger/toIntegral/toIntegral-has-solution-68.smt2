(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8833810496769471942712925738305784761905670166015625 753 {- 3978394566151257 753 (-8.92329e+226)}
; -1.8833810496769471942712925738305784761905670166015625 753 I == -1.8833810496769471942712925738305784761905670166015625 753
; [HW: -1.8833810496769471942712925738305784761905670166015625 753] 

; mpf : - 3978394566151257 753
; mpfd: - 3978394566151257 753 (-8.92329e+226) class: Neg. norm. non-zero
; hwf : - 3978394566151257 753 (-8.92329e+226) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011110000 #b1110001000100101010000101010111001000100110001011001)))
(assert (= r (fp #b1 #b11011110000 #b1110001000100101010000101010111001000100110001011001)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

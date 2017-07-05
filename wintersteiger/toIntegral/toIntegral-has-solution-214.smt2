(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2240647061915279625310404298943467438220977783203125 102 {- 1009097727311045 102 (-6.20675e+030)}
; -1.2240647061915279625310404298943467438220977783203125 102 I == -1.2240647061915279625310404298943467438220977783203125 102
; [HW: -1.2240647061915279625310404298943467438220977783203125 102] 

; mpf : - 1009097727311045 102
; mpfd: - 1009097727311045 102 (-6.20675e+030) class: Neg. norm. non-zero
; hwf : - 1009097727311045 102 (-6.20675e+030) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001100101 #b0011100101011100010011011111100101000111110011000101)))
(assert (= r (fp #b1 #b10001100101 #b0011100101011100010011011111100101000111110011000101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

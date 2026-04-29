(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9213867080832314204741351204575039446353912353515625 75 {- 4149556835187769 75 (-7.25879e+022)}
; -1.9213867080832314204741351204575039446353912353515625 75 I == -1.9213867080832314204741351204575039446353912353515625 75
; [HW: -1.9213867080832314204741351204575039446353912353515625 75] 

; mpf : - 4149556835187769 75
; mpfd: - 4149556835187769 75 (-7.25879e+022) class: Neg. norm. non-zero
; hwf : - 4149556835187769 75 (-7.25879e+022) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001001010 #b1110101111011111111111111101001000101111110000111001)))
(assert (= r (fp #b1 #b10001001010 #b1110101111011111111111111101001000101111110000111001)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

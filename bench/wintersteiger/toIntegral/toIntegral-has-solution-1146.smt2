(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2831907548489802639579693277482874691486358642578125 832 {+ 1275377778012637 832 (3.67492e+250)}
; 1.2831907548489802639579693277482874691486358642578125 832 I == 1.2831907548489802639579693277482874691486358642578125 832
; [HW: 1.2831907548489802639579693277482874691486358642578125 832] 

; mpf : + 1275377778012637 832
; mpfd: + 1275377778012637 832 (3.67492e+250) class: Pos. norm. non-zero
; hwf : + 1275377778012637 832 (3.67492e+250) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111111 #b0100100001111111001100000111011010011011000111011101)))
(assert (= r (fp #b0 #b11100111111 #b0100100001111111001100000111011010011011000111011101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

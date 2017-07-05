(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4843326814782658029656658982275985181331634521484375p-139 {- 2181240483828871 -139 (-2.12991e-042)}
; -1.4843326814782658029656658982275985181331634521484375p-139 | == 1.4843326814782658029656658982275985181331634521484375p-139
; [HW: 1.4843326814782658029656658982275985181331634521484375p-139] 

; mpf : + 2181240483828871 -139
; mpfd: + 2181240483828871 -139 (2.12991e-042) class: Pos. norm. non-zero
; hwf : + 2181240483828871 -139 (2.12991e-042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101110100 #b0111101111111101001110100000001101010101010010000111)))
(assert (= r (fp #b0 #b01101110100 #b0111101111111101001110100000001101010101010010000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

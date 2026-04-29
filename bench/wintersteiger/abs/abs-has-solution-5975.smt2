(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9723041671093473059528378144023008644580841064453125p-139 {+ 4378868684684437 -139 (2.83012e-042)}
; 1.9723041671093473059528378144023008644580841064453125p-139 | == 1.9723041671093473059528378144023008644580841064453125p-139
; [HW: 1.9723041671093473059528378144023008644580841064453125p-139] 

; mpf : + 4378868684684437 -139
; mpfd: + 4378868684684437 -139 (2.83012e-042) class: Pos. norm. non-zero
; hwf : + 4378868684684437 -139 (2.83012e-042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101110100 #b1111100011101000111011010000011101111111110010010101)))
(assert (= r (fp #b0 #b01101110100 #b1111100011101000111011010000011101111111110010010101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

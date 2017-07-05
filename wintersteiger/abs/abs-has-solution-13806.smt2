(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.42431171315900417795319299330003559589385986328125p233 {+ 1910930073271828 233 (1.96605e+070)}
; 1.42431171315900417795319299330003559589385986328125p233 | == 1.42431171315900417795319299330003559589385986328125p233
; [HW: 1.42431171315900417795319299330003559589385986328125p233] 

; mpf : + 1910930073271828 233
; mpfd: + 1910930073271828 233 (1.96605e+070) class: Pos. norm. non-zero
; hwf : + 1910930073271828 233 (1.96605e+070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011101000 #b0110110010011111101100010100001101010011111000010100)))
(assert (= r (fp #b0 #b10011101000 #b0110110010011111101100010100001101010011111000010100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

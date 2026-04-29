(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4185735959303447106805151634034700691699981689453125p-521 {- 1885087890659029 -521 (-2.06645e-157)}
; -1.4185735959303447106805151634034700691699981689453125p-521 | == 1.4185735959303447106805151634034700691699981689453125p-521
; [HW: 1.4185735959303447106805151634034700691699981689453125p-521] 

; mpf : + 1885087890659029 -521
; mpfd: + 1885087890659029 -521 (2.06645e-157) class: Pos. norm. non-zero
; hwf : + 1885087890659029 -521 (2.06645e-157) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111110110 #b0110101100100111101000111010000101111101011011010101)))
(assert (= r (fp #b0 #b00111110110 #b0110101100100111101000111010000101111101011011010101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

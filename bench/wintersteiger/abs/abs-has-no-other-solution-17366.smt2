(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.576447159021616695184775380766950547695159912109375p-102 {- 2596087210568534 -102 (-3.10899e-031)}
; -1.576447159021616695184775380766950547695159912109375p-102 | == 1.576447159021616695184775380766950547695159912109375p-102
; [HW: 1.576447159021616695184775380766950547695159912109375p-102] 

; mpf : + 2596087210568534 -102
; mpfd: + 2596087210568534 -102 (3.10899e-031) class: Pos. norm. non-zero
; hwf : + 2596087210568534 -102 (3.10899e-031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110011001 #b1001001110010010000010100111111111011110101101010110)))
(assert (= r (fp #b0 #b01110011001 #b1001001110010010000010100111111111011110101101010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

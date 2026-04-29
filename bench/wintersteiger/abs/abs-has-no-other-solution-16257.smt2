(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2675579077703222896644774664309807121753692626953125p238 {- 1204973693734453 238 (-5.59895e+071)}
; -1.2675579077703222896644774664309807121753692626953125p238 | == 1.2675579077703222896644774664309807121753692626953125p238
; [HW: 1.2675579077703222896644774664309807121753692626953125p238] 

; mpf : + 1204973693734453 238
; mpfd: + 1204973693734453 238 (5.59895e+071) class: Pos. norm. non-zero
; hwf : + 1204973693734453 238 (5.59895e+071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101101 #b0100010001111110101011001100111110101000111000110101)))
(assert (= r (fp #b0 #b10011101101 #b0100010001111110101011001100111110101000111000110101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

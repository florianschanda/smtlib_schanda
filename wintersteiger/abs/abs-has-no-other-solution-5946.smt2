(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0248625278576586339340792619623243808746337890625p428 {- 111970871195240 428 (-7.10401e+128)}
; -1.0248625278576586339340792619623243808746337890625p428 | == 1.0248625278576586339340792619623243808746337890625p428
; [HW: 1.0248625278576586339340792619623243808746337890625p428] 

; mpf : + 111970871195240 428
; mpfd: + 111970871195240 428 (7.10401e+128) class: Pos. norm. non-zero
; hwf : + 111970871195240 428 (7.10401e+128) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110101011 #b0000011001011101011001000000000000001011011001101000)))
(assert (= r (fp #b0 #b10110101011 #b0000011001011101011001000000000000001011011001101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

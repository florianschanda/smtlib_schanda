(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2339643127192154725690897976164706051349639892578125p21 {+ 1053681591580253 21 (2.58781e+006)}
; 1.2339643127192154725690897976164706051349639892578125p21 | == 1.2339643127192154725690897976164706051349639892578125p21
; [HW: 1.2339643127192154725690897976164706051349639892578125p21] 

; mpf : + 1053681591580253 21
; mpfd: + 1053681591580253 21 (2.58781e+006) class: Pos. norm. non-zero
; hwf : + 1053681591580253 21 (2.58781e+006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010100 #b0011101111100101000101011100111110001111011001011101)))
(assert (= r (fp #b0 #b10000010100 #b0011101111100101000101011100111110001111011001011101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

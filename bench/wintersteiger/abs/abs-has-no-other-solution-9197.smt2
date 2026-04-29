(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3015133136084617859751233481802046298980712890625p-895 {- 1357895246814312 -895 (-4.92723e-270)}
; -1.3015133136084617859751233481802046298980712890625p-895 | == 1.3015133136084617859751233481802046298980712890625p-895
; [HW: 1.3015133136084617859751233481802046298980712890625p-895] 

; mpf : + 1357895246814312 -895
; mpfd: + 1357895246814312 -895 (4.92723e-270) class: Pos. norm. non-zero
; hwf : + 1357895246814312 -895 (4.92723e-270) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010000000 #b0100110100101111111110011111110101000001110001101000)))
(assert (= r (fp #b0 #b00010000000 #b0100110100101111111110011111110101000001110001101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.343680907021792325650721977581270039081573486328125p283 {- 1547801204797698 283 (-2.08826e+085)}
; -1.343680907021792325650721977581270039081573486328125p283 | == 1.343680907021792325650721977581270039081573486328125p283
; [HW: 1.343680907021792325650721977581270039081573486328125p283] 

; mpf : + 1547801204797698 283
; mpfd: + 1547801204797698 283 (2.08826e+085) class: Pos. norm. non-zero
; hwf : + 1547801204797698 283 (2.08826e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100011010 #b0101011111111011011110001100111111101011000100000010)))
(assert (= r (fp #b0 #b10100011010 #b0101011111111011011110001100111111101011000100000010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

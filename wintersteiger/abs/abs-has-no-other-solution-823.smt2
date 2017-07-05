(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.32438986399413227701415962656028568744659423828125p508 {+ 1460922070606740 508 (1.10982e+153)}
; 1.32438986399413227701415962656028568744659423828125p508 | == 1.32438986399413227701415962656028568744659423828125p508
; [HW: 1.32438986399413227701415962656028568744659423828125p508] 

; mpf : + 1460922070606740 508
; mpfd: + 1460922070606740 508 (1.10982e+153) class: Pos. norm. non-zero
; hwf : + 1460922070606740 508 (1.10982e+153) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111011 #b0101001100001011001101101101000100000010001110010100)))
(assert (= r (fp #b0 #b10111111011 #b0101001100001011001101101101000100000010001110010100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.346812632546293908575307796127162873744964599609375p-387 {+ 1561905242702870 -387 (4.27267e-117)}
; 1.346812632546293908575307796127162873744964599609375p-387 | == 1.346812632546293908575307796127162873744964599609375p-387
; [HW: 1.346812632546293908575307796127162873744964599609375p-387] 

; mpf : + 1561905242702870 -387
; mpfd: + 1561905242702870 -387 (4.27267e-117) class: Pos. norm. non-zero
; hwf : + 1561905242702870 -387 (4.27267e-117) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001111100 #b0101100011001000101101100111001010100000010000010110)))
(assert (= r (fp #b0 #b01001111100 #b0101100011001000101101100111001010100000010000010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

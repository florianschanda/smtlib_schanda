(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3900534089817970784253020610776729881763458251953125p-159 {- 1756644387345013 -159 (-1.90223e-048)}
; -1.3900534089817970784253020610776729881763458251953125p-159 | == 1.3900534089817970784253020610776729881763458251953125p-159
; [HW: 1.3900534089817970784253020610776729881763458251953125p-159] 

; mpf : + 1756644387345013 -159
; mpfd: + 1756644387345013 -159 (1.90223e-048) class: Pos. norm. non-zero
; hwf : + 1756644387345013 -159 (1.90223e-048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101100000 #b0110001111011010100010100100101101000101001001110101)))
(assert (= r (fp #b0 #b01101100000 #b0110001111011010100010100100101101000101001001110101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

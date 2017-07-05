(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.173747829981136359123183865449391305446624755859375p-1014 {+ 782490662359478 -1014 (6.68589e-306)}
; 1.173747829981136359123183865449391305446624755859375p-1014 | == 1.173747829981136359123183865449391305446624755859375p-1014
; [HW: 1.173747829981136359123183865449391305446624755859375p-1014] 

; mpf : + 782490662359478 -1014
; mpfd: + 782490662359478 -1014 (6.68589e-306) class: Pos. norm. non-zero
; hwf : + 782490662359478 -1014 (6.68589e-306) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000001001 #b0010110001111010101111001101111110000101000110110110)))
(assert (= r (fp #b0 #b00000001001 #b0010110001111010101111001101111110000101000110110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

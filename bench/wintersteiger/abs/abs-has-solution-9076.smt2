(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8883629022221619653265634042327292263507843017578125p-489 {+ 4000830835417501 -489 (1.18146e-147)}
; 1.8883629022221619653265634042327292263507843017578125p-489 | == 1.8883629022221619653265634042327292263507843017578125p-489
; [HW: 1.8883629022221619653265634042327292263507843017578125p-489] 

; mpf : + 4000830835417501 -489
; mpfd: + 4000830835417501 -489 (1.18146e-147) class: Pos. norm. non-zero
; hwf : + 4000830835417501 -489 (1.18146e-147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010110 #b1110001101101011110000000100110000000110000110011101)))
(assert (= r (fp #b0 #b01000010110 #b1110001101101011110000000100110000000110000110011101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

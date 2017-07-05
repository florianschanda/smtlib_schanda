(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7030751879592174180544361661304719746112823486328125p-22 {- 3166369154506573 -22 (-4.06045e-007)}
; -1.7030751879592174180544361661304719746112823486328125p-22 | == 1.7030751879592174180544361661304719746112823486328125p-22
; [HW: 1.7030751879592174180544361661304719746112823486328125p-22] 

; mpf : + 3166369154506573 -22
; mpfd: + 3166369154506573 -22 (4.06045e-007) class: Pos. norm. non-zero
; hwf : + 3166369154506573 -22 (4.06045e-007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111101001 #b1011001111111100101111000100101011101001111101001101)))
(assert (= r (fp #b0 #b01111101001 #b1011001111111100101111000100101011101001111101001101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

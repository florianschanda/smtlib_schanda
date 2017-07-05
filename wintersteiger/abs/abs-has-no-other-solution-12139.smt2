(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.66012679184862665948685389594174921512603759765625p-194 {+ 2972946773786756 -194 (6.61184e-059)}
; 1.66012679184862665948685389594174921512603759765625p-194 | == 1.66012679184862665948685389594174921512603759765625p-194
; [HW: 1.66012679184862665948685389594174921512603759765625p-194] 

; mpf : + 2972946773786756 -194
; mpfd: + 2972946773786756 -194 (6.61184e-059) class: Pos. norm. non-zero
; hwf : + 2972946773786756 -194 (6.61184e-059) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100111101 #b1010100011111110000100011100011000110100000010000100)))
(assert (= r (fp #b0 #b01100111101 #b1010100011111110000100011100011000110100000010000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9889794803556590796489444983308203518390655517578125p292 {- 4453967619206813 292 (-1.58267e+088)}
; -1.9889794803556590796489444983308203518390655517578125p292 | == 1.9889794803556590796489444983308203518390655517578125p292
; [HW: 1.9889794803556590796489444983308203518390655517578125p292] 

; mpf : + 4453967619206813 292
; mpfd: + 4453967619206813 292 (1.58267e+088) class: Pos. norm. non-zero
; hwf : + 4453967619206813 292 (1.58267e+088) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100011 #b1111110100101101110000100101110010001010111010011101)))
(assert (= r (fp #b0 #b10100100011 #b1111110100101101110000100101110010001010111010011101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

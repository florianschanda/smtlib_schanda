(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.45712702431475893405377064482308924198150634765625p939 {+ 2058717096364932 939 (6.77116e+282)}
; 1.45712702431475893405377064482308924198150634765625p939 | == 1.45712702431475893405377064482308924198150634765625p939
; [HW: 1.45712702431475893405377064482308924198150634765625p939] 

; mpf : + 2058717096364932 939
; mpfd: + 2058717096364932 939 (6.77116e+282) class: Pos. norm. non-zero
; hwf : + 2058717096364932 939 (6.77116e+282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101010 #b0111010100000110010001101101001110001100101110000100)))
(assert (= r (fp #b0 #b11110101010 #b0111010100000110010001101101001110001100101110000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

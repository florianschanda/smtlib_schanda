(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.69220792889089555188775193528272211551666259765625p-760 {- 3117427370615940 -760 (-2.79034e-229)}
; -1.69220792889089555188775193528272211551666259765625p-760 | == 1.69220792889089555188775193528272211551666259765625p-760
; [HW: 1.69220792889089555188775193528272211551666259765625p-760] 

; mpf : + 3117427370615940 -760
; mpfd: + 3117427370615940 -760 (2.79034e-229) class: Pos. norm. non-zero
; hwf : + 3117427370615940 -760 (2.79034e-229) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100000111 #b1011000100110100100010011111000010011110010010000100)))
(assert (= r (fp #b0 #b00100000111 #b1011000100110100100010011111000010011110010010000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

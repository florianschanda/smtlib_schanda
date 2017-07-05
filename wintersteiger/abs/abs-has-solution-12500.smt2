(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.006029895478437907740953960455954074859619140625p-320 {- 27156235029776 -320 (-4.70991e-097)}
; -1.006029895478437907740953960455954074859619140625p-320 | == 1.006029895478437907740953960455954074859619140625p-320
; [HW: 1.006029895478437907740953960455954074859619140625p-320] 

; mpf : + 27156235029776 -320
; mpfd: + 27156235029776 -320 (4.70991e-097) class: Pos. norm. non-zero
; hwf : + 27156235029776 -320 (4.70991e-097) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010111111 #b0000000110001011001011001101101111100000110100010000)))
(assert (= r (fp #b0 #b01010111111 #b0000000110001011001011001101101111100000110100010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.879070281288952148912585471407510340213775634765625p-214 {- 3958980591245402 -214 (-7.13714e-065)}
; -1.879070281288952148912585471407510340213775634765625p-214 | == 1.879070281288952148912585471407510340213775634765625p-214
; [HW: 1.879070281288952148912585471407510340213775634765625p-214] 

; mpf : + 3958980591245402 -214
; mpfd: + 3958980591245402 -214 (7.13714e-065) class: Pos. norm. non-zero
; hwf : + 3958980591245402 -214 (7.13714e-065) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100101001 #b1110000100001010101111111111110100000101100001011010)))
(assert (= r (fp #b0 #b01100101001 #b1110000100001010101111111111110100000101100001011010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

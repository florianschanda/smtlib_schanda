(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5549610265639761674805185975856147706508636474609375p288 {- 2499322272438671 288 (-7.73318e+086)}
; -1.5549610265639761674805185975856147706508636474609375p288 | == 1.5549610265639761674805185975856147706508636474609375p288
; [HW: 1.5549610265639761674805185975856147706508636474609375p288] 

; mpf : + 2499322272438671 288
; mpfd: + 2499322272438671 288 (7.73318e+086) class: Pos. norm. non-zero
; hwf : + 2499322272438671 288 (7.73318e+086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100011111 #b1000111000010001111011010000001110100101100110001111)))
(assert (= r (fp #b0 #b10100011111 #b1000111000010001111011010000001110100101100110001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6240026251291033165813360028550960123538970947265625p-534 {+ 2810257990009641 -534 (2.88781e-161)}
; 1.6240026251291033165813360028550960123538970947265625p-534 | == 1.6240026251291033165813360028550960123538970947265625p-534
; [HW: 1.6240026251291033165813360028550960123538970947265625p-534] 

; mpf : + 2810257990009641 -534
; mpfd: + 2810257990009641 -534 (2.88781e-161) class: Pos. norm. non-zero
; hwf : + 2810257990009641 -534 (2.88781e-161) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111101001 #b1001111110111110101000101101001110001100001100101001)))
(assert (= r (fp #b0 #b00111101001 #b1001111110111110101000101101001110001100001100101001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

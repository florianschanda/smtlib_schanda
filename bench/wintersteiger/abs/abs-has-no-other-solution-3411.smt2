(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9000953691995177141649264740408398211002349853515625p-549 {+ 4053669169324857 -549 (1.03112e-165)}
; 1.9000953691995177141649264740408398211002349853515625p-549 | == 1.9000953691995177141649264740408398211002349853515625p-549
; [HW: 1.9000953691995177141649264740408398211002349853515625p-549] 

; mpf : + 4053669169324857 -549
; mpfd: + 4053669169324857 -549 (1.03112e-165) class: Pos. norm. non-zero
; hwf : + 4053669169324857 -549 (1.03112e-165) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011010 #b1110011001101100101001100110110111111110001100111001)))
(assert (= r (fp #b0 #b00111011010 #b1110011001101100101001100110110111111110001100111001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

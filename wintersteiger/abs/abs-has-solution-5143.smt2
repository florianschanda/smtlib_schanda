(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.029839997140293395005983256851322948932647705078125p533 {+ 134387400001762 533 (2.89573e+160)}
; 1.029839997140293395005983256851322948932647705078125p533 | == 1.029839997140293395005983256851322948932647705078125p533
; [HW: 1.029839997140293395005983256851322948932647705078125p533] 

; mpf : + 134387400001762 533
; mpfd: + 134387400001762 533 (2.89573e+160) class: Pos. norm. non-zero
; hwf : + 134387400001762 533 (2.89573e+160) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010100 #b0000011110100011100110000001001111010100100011100010)))
(assert (= r (fp #b0 #b11000010100 #b0000011110100011100110000001001111010100100011100010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

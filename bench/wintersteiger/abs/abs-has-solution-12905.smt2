(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.191233458714569426462048795656301081180572509765625p-822 {+ 861238933407706 -822 (4.25932e-248)}
; 1.191233458714569426462048795656301081180572509765625p-822 | == 1.191233458714569426462048795656301081180572509765625p-822
; [HW: 1.191233458714569426462048795656301081180572509765625p-822] 

; mpf : + 861238933407706 -822
; mpfd: + 861238933407706 -822 (4.25932e-248) class: Pos. norm. non-zero
; hwf : + 861238933407706 -822 (4.25932e-248) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011001001 #b0011000011110100101011010000101100010100011111011010)))
(assert (= r (fp #b0 #b00011001001 #b0011000011110100101011010000101100010100011111011010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

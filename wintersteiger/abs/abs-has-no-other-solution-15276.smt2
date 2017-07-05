(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5586607574928643682454776353552006185054779052734375p261 {+ 2515984379271383 261 (5.77538e+078)}
; 1.5586607574928643682454776353552006185054779052734375p261 | == 1.5586607574928643682454776353552006185054779052734375p261
; [HW: 1.5586607574928643682454776353552006185054779052734375p261] 

; mpf : + 2515984379271383 261
; mpfd: + 2515984379271383 261 (5.77538e+078) class: Pos. norm. non-zero
; hwf : + 2515984379271383 261 (5.77538e+078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000100 #b1000111100000100011001000011001011111101100011010111)))
(assert (= r (fp #b0 #b10100000100 #b1000111100000100011001000011001011111101100011010111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

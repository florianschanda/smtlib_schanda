(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 0.7074183802757085803847303395741619169712066650390625p-1022 {+ 3185929153804721 -1023 (1.57406e-308)}
; 0.7074183802757085803847303395741619169712066650390625p-1022 | == 0.7074183802757085803847303395741619169712066650390625p-1022
; [HW: 0.7074183802757085803847303395741619169712066650390625p-1022] 

; mpf : + 3185929153804721 -1023
; mpfd: + 3185929153804721 -1023 (1.57406e-308) class: Pos. denorm.
; hwf : + 3185929153804721 -1023 (1.57406e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1011010100011001010111101111011111011111100110110001)))
(assert (= r (fp #b0 #b00000000000 #b1011010100011001010111101111011111011111100110110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

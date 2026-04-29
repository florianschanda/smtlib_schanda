(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4618524236246293046548316851840354502201080322265625 544 {+ 2079998402936041 544 (8.41824e+163)}
; 1.4618524236246293046548316851840354502201080322265625 544 I == 1.4618524236246293046548316851840354502201080322265625 544
; [HW: 1.4618524236246293046548316851840354502201080322265625 544] 

; mpf : + 2079998402936041 544
; mpfd: + 2079998402936041 544 (8.41824e+163) class: Pos. norm. non-zero
; hwf : + 2079998402936041 544 (8.41824e+163) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011111 #b0111011000111011111101011101111100001011110011101001)))
(assert (= r (fp #b0 #b11000011111 #b0111011000111011111101011101111100001011110011101001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

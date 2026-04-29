(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0363604547177154291404121977393515408039093017578125 906 {+ 163752930317725 906 (5.60644e+272)}
; 1.0363604547177154291404121977393515408039093017578125 906 I == 1.0363604547177154291404121977393515408039093017578125 906
; [HW: 1.0363604547177154291404121977393515408039093017578125 906] 

; mpf : + 163752930317725 906
; mpfd: + 163752930317725 906 (5.60644e+272) class: Pos. norm. non-zero
; hwf : + 163752930317725 906 (5.60644e+272) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001001 #b0000100101001110111010110011001111100001010110011101)))
(assert (= r (fp #b0 #b11110001001 #b0000100101001110111010110011001111100001010110011101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

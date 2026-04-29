(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3759272269003941513432209831080399453639984130859375p286 {+ 1693025718987039 286 (1.7107e+086)}
; 1.3759272269003941513432209831080399453639984130859375p286 | == 1.3759272269003941513432209831080399453639984130859375p286
; [HW: 1.3759272269003941513432209831080399453639984130859375p286] 

; mpf : + 1693025718987039 286
; mpfd: + 1693025718987039 286 (1.7107e+086) class: Pos. norm. non-zero
; hwf : + 1693025718987039 286 (1.7107e+086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011101 #b0110000000111100110001000100100100110110100100011111)))
(assert (= r (fp #b0 #b10100011101 #b0110000000111100110001000100100100110110100100011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.481183671891049158375608385540544986724853515625 489 {+ 2167058605425296 489 (2.36743e+147)}
; 1.481183671891049158375608385540544986724853515625 489 I == 1.481183671891049158375608385540544986724853515625 489
; [HW: 1.481183671891049158375608385540544986724853515625 489] 

; mpf : + 2167058605425296 489
; mpfd: + 2167058605425296 489 (2.36743e+147) class: Pos. norm. non-zero
; hwf : + 2167058605425296 489 (2.36743e+147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101000 #b0111101100101110110110100110011000100100001010010000)))
(assert (= r (fp #b0 #b10111101000 #b0111101100101110110110100110011000100100001010010000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

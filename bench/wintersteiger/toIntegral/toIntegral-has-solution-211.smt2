(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7798879340849318442252524619107134640216827392578125 80 {- 3512303009335645 80 (-2.15175e+024)}
; -1.7798879340849318442252524619107134640216827392578125 80 I == -1.7798879340849318442252524619107134640216827392578125 80
; [HW: -1.7798879340849318442252524619107134640216827392578125 80] 

; mpf : - 3512303009335645 80
; mpfd: - 3512303009335645 80 (-2.15175e+024) class: Neg. norm. non-zero
; hwf : - 3512303009335645 80 (-2.15175e+024) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001001111 #b1100011110100110101111000101001101110000100101011101)))
(assert (= r (fp #b1 #b10001001111 #b1100011110100110101111000101001101110000100101011101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

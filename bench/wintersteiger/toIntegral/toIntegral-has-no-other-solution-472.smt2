(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.124484143041525552320081260404549539089202880859375 742 {- 560626740215350 742 (-2.60142e+223)}
; -1.124484143041525552320081260404549539089202880859375 742 I == -1.124484143041525552320081260404549539089202880859375 742
; [HW: -1.124484143041525552320081260404549539089202880859375 742] 

; mpf : - 560626740215350 742
; mpfd: - 560626740215350 742 (-2.60142e+223) class: Neg. norm. non-zero
; hwf : - 560626740215350 742 (-2.60142e+223) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011100101 #b0001111111011110001100010101101100111011111000110110)))
(assert (= r (fp #b1 #b11011100101 #b0001111111011110001100010101101100111011111000110110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

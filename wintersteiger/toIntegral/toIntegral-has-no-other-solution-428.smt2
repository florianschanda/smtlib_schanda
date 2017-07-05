(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8024421309779887767632544637308456003665924072265625 97 {- 3613878082058857 97 (-2.85608e+029)}
; -1.8024421309779887767632544637308456003665924072265625 97 I == -1.8024421309779887767632544637308456003665924072265625 97
; [HW: -1.8024421309779887767632544637308456003665924072265625 97] 

; mpf : - 3613878082058857 97
; mpfd: - 3613878082058857 97 (-2.85608e+029) class: Neg. norm. non-zero
; hwf : - 3613878082058857 97 (-2.85608e+029) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001100000 #b1100110101101100110110001111010101111011101001101001)))
(assert (= r (fp #b1 #b10001100000 #b1100110101101100110110001111010101111011101001101001)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.640134929167393895710347351268865168094635009765625 937 {- 2882911428465114 937 (-1.9054e+282)}
; -1.640134929167393895710347351268865168094635009765625 937 I == -1.640134929167393895710347351268865168094635009765625 937
; [HW: -1.640134929167393895710347351268865168094635009765625 937] 

; mpf : - 2882911428465114 937
; mpfd: - 2882911428465114 937 (-1.9054e+282) class: Neg. norm. non-zero
; hwf : - 2882911428465114 937 (-1.9054e+282) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110101000 #b1010001111011111111000011111100111001101000111011010)))
(assert (= r (fp #b1 #b11110101000 #b1010001111011111111000011111100111001101000111011010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

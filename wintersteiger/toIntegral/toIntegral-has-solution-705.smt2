(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.86972515916680936953753189300186932086944580078125 771 {- 3916893902738388 771 (-2.32223e+232)}
; -1.86972515916680936953753189300186932086944580078125 771 I == -1.86972515916680936953753189300186932086944580078125 771
; [HW: -1.86972515916680936953753189300186932086944580078125 771] 

; mpf : - 3916893902738388 771
; mpfd: - 3916893902738388 771 (-2.32223e+232) class: Neg. norm. non-zero
; hwf : - 3916893902738388 771 (-2.32223e+232) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100000010 #b1101111010100110010011101101101100100001001111010100)))
(assert (= r (fp #b1 #b11100000010 #b1101111010100110010011101101101100100001001111010100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

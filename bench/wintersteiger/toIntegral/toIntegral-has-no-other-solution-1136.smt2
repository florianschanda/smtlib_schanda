(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5425899439102679355784175641019828617572784423828125 763 {- 2443607869209261 763 (-7.48406e+229)}
; -1.5425899439102679355784175641019828617572784423828125 763 I == -1.5425899439102679355784175641019828617572784423828125 763
; [HW: -1.5425899439102679355784175641019828617572784423828125 763] 

; mpf : - 2443607869209261 763
; mpfd: - 2443607869209261 763 (-7.48406e+229) class: Neg. norm. non-zero
; hwf : - 2443607869209261 763 (-7.48406e+229) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011111010 #b1000101011100111001011001011000000111011101010101101)))
(assert (= r (fp #b1 #b11011111010 #b1000101011100111001011001011000000111011101010101101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

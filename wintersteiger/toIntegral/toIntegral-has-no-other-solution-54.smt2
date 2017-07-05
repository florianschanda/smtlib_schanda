(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.765603532400685349301738824578933417797088623046875 22 {- 3447971783233262 22 (-7.40548e+006)}
; -1.765603532400685349301738824578933417797088623046875 22 I == -1.7656033039093017578125 22
; [HW: -1.7656033039093017578125 22] 

; mpf : - 3447970754199552 22
; mpfd: - 3447970754199552 22 (-7.40548e+006) class: Neg. norm. non-zero
; hwf : - 3447970754199552 22 (-7.40548e+006) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000010101 #b1100001111111110100101111101010101011100111011101110)))
(assert (= r (fp #b1 #b10000010101 #b1100001111111110100101000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

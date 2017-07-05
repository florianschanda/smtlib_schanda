(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.728146540984423662479230188182555139064788818359375 534 {- 3279280490648566 534 (-9.71848e+160)}
; -1.728146540984423662479230188182555139064788818359375 534 I == -1.728146540984423662479230188182555139064788818359375 534
; [HW: -1.728146540984423662479230188182555139064788818359375 534] 

; mpf : - 3279280490648566 534
; mpfd: - 3279280490648566 534 (-9.71848e+160) class: Neg. norm. non-zero
; hwf : - 3279280490648566 534 (-9.71848e+160) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000010101 #b1011101001100111110011111100110000111001001111110110)))
(assert (= r (fp #b1 #b11000010101 #b1011101001100111110011111100110000111001001111110110)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

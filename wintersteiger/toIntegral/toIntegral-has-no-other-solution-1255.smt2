(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.708890237883391893802809136104770004749298095703125 525 {+ 3192557811178226 525 (1.87699e+158)}
; 1.708890237883391893802809136104770004749298095703125 525 I == 1.708890237883391893802809136104770004749298095703125 525
; [HW: 1.708890237883391893802809136104770004749298095703125 525] 

; mpf : + 3192557811178226 525
; mpfd: + 3192557811178226 525 (1.87699e+158) class: Pos. norm. non-zero
; hwf : + 3192557811178226 525 (1.87699e+158) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001100 #b1011010101111001110101001010010000101001101011110010)))
(assert (= r (fp #b0 #b11000001100 #b1011010101111001110101001010010000101001101011110010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

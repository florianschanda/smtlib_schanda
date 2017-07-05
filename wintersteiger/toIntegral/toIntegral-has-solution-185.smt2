(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5806716169527474935563304825336672365665435791015625 -655 {- 2615112477733017 -655 (-1.05729e-197)}
; -1.5806716169527474935563304825336672365665435791015625 -655 I == -1.0 0
; [HW: -1.0 0] 

; mpf : - 0 0
; mpfd: - 0 0 (-1) class: Neg. norm. non-zero
; hwf : - 0 0 (-1) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101110000 #b1001010010100110111001010010010010000111000010011001)))
(assert (= r (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

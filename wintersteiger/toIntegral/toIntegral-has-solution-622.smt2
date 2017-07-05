(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1535428790854684866218349270639009773731231689453125 219 {- 691495653034709 219 (-9.71858e+065)}
; -1.1535428790854684866218349270639009773731231689453125 219 I == -1.1535428790854684866218349270639009773731231689453125 219
; [HW: -1.1535428790854684866218349270639009773731231689453125 219] 

; mpf : - 691495653034709 219
; mpfd: - 691495653034709 219 (-9.71858e+065) class: Neg. norm. non-zero
; hwf : - 691495653034709 219 (-9.71858e+065) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011011010 #b0010011101001110100101100000110000110100101011010101)))
(assert (= r (fp #b1 #b10011011010 #b0010011101001110100101100000110000110100101011010101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

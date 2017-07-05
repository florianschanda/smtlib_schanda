(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1718118583847043634449391902307979762554168701171875p-582 {- 773771821399187 -582 (-7.40287e-176)}
; Y = 1.923760536250089359100456931628286838531494140625p1002 {+ 4160247606835472 1002 (8.2453e+301)}
; -1.1718118583847043634449391902307979762554168701171875p-582 / 1.923760536250089359100456931628286838531494140625p1002 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110111001 #b0010101111111011110111001010100011010011110010010011)))
(assert (= y (fp #b0 #b11111101001 #b1110110001111011100100100000110010000111100100010000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)

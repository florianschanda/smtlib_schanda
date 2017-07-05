(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9266015454974210197036654790281318128108978271484375 -639 {+ 4173042375023111 -639 (8.44549e-193)}
; 1.9266015454974210197036654790281318128108978271484375 -639 I == 1.0 0
; [HW: 1.0 0] 

; mpf : + 0 0
; mpfd: + 0 0 (1) class: Pos. norm. non-zero
; hwf : + 0 0 (1) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110000000 #b1110110100110101110000100100011001010101101000000111)))
(assert (= r (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

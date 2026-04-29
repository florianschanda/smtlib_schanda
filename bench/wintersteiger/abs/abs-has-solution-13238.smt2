(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.813743052155276647141590729006566107273101806640625p-852 {+ 3664772906461834 -852 (6.03976e-257)}
; 1.813743052155276647141590729006566107273101806640625p-852 | == 1.813743052155276647141590729006566107273101806640625p-852
; [HW: 1.813743052155276647141590729006566107273101806640625p-852] 

; mpf : + 3664772906461834 -852
; mpfd: + 3664772906461834 -852 (6.03976e-257) class: Pos. norm. non-zero
; hwf : + 3664772906461834 -852 (6.03976e-257) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010101011 #b1101000001010001011101101111010001011010101010001010)))
(assert (= r (fp #b0 #b00010101011 #b1101000001010001011101101111010001011010101010001010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

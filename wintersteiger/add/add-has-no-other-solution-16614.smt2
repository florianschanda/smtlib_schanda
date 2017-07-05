(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7937311369504478353320564565365202724933624267578125p-599 {+ 3574647252602397 -599 (8.6455e-181)}
; Y = -zero {- 0 -1023 (-0)}
; 1.7937311369504478353320564565365202724933624267578125p-599 + -zero == 1.7937311369504478353320564565365202724933624267578125p-599
; [HW: 1.7937311369504478353320564565365202724933624267578125p-599] 

; mpf : + 3574647252602397 -599
; mpfd: + 3574647252602397 -599 (8.6455e-181) class: Pos. norm. non-zero
; hwf : + 3574647252602397 -599 (8.6455e-181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110101000 #b1100101100110001111101101011101100000100111000011101)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b00110101000 #b1100101100110001111101101011101100000100111000011101)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)

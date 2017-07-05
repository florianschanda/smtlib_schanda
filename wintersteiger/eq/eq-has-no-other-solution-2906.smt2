(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1413465765088883774325267950189299881458282470703125p274 {- 636568389295525 274 (-3.46447e+082)}
; Y = -1.7792100938618535810320508971926756203174591064453125p562 {- 3509250288359573 562 (-2.68587e+169)}
; -1.1413465765088883774325267950189299881458282470703125p274 = -1.7792100938618535810320508971926756203174591064453125p562 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100010001 #b0010010000101111010010100000101110000001110110100101)))
(assert (= y (fp #b1 #b11000110001 #b1100011101111010010100000000110111011001100010010101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.71921171172467435184216810739599168300628662109375p-988 {+ 3239041596923740 -988 (6.57194e-298)}
; 1.71921171172467435184216810739599168300628662109375p-988 | == 1.71921171172467435184216810739599168300628662109375p-988
; [HW: 1.71921171172467435184216810739599168300628662109375p-988] 

; mpf : + 3239041596923740 -988
; mpfd: + 3239041596923740 -988 (6.57194e-298) class: Pos. norm. non-zero
; hwf : + 3239041596923740 -988 (6.57194e-298) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000100011 #b1011100000011110010000100011110011000001111101011100)))
(assert (= r (fp #b0 #b00000100011 #b1011100000011110010000100011110011000001111101011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

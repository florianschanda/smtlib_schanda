(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7016282579433603672214303514920175075531005859375p768 {+ 3159852761026328 768 (2.64181e+231)}
; Y = -1.9389537760903643448529010129277594387531280517578125p1017 {- 4228671876118685 1017 (-2.72316e+306)}
; 1.7016282579433603672214303514920175075531005859375p768 = -1.9389537760903643448529010129277594387531280517578125p1017 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011111111 #b1011001110011101111010001101010111010000111100011000)))
(assert (= y (fp #b1 #b11111111000 #b1111000001011111010001100101000011000011100010011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

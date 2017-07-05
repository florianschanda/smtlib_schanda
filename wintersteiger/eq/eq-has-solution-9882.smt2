(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5712896797667668113973604704369790852069854736328125p624 {+ 2572859988918221 624 (1.09389e+188)}
; Y = -1.6279820542606078248581980005837976932525634765625p666 {- 2828179745563432 666 (-4.98456e+200)}
; 1.5712896797667668113973604704369790852069854736328125p624 = -1.6279820542606078248581980005837976932525634765625p666 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101111 #b1001001001000000000010100101101100100011111111001101)))
(assert (= y (fp #b1 #b11010011001 #b1010000011000011011011101001000110000110001100101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

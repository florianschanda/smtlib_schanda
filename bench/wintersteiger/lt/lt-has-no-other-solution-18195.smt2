(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2426806062900432880979906258289702236652374267578125p597 {- 1092936288057885 597 (-6.44565e+179)}
; Y = -1.8429041688028979795177519918070174753665924072265625p667 {- 3796102900529769 667 (-1.12852e+201)}
; -1.2426806062900432880979906258289702236652374267578125p597 < -1.8429041688028979795177519918070174753665924072265625p667 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010100 #b0011111000100000010100001111001101100011101000011101)))
(assert (= y (fp #b1 #b11010011010 #b1101011111001000100100010100111010101011101001101001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

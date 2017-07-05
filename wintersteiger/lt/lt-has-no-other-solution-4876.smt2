(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.31235081244546591960897785611450672149658203125p542 {- 1406703002538272 542 (-1.88933e+163)}
; Y = -1.0382439285912827831026561398175545036792755126953125p107 {- 172235342552885 107 (-1.68465e+032)}
; -1.31235081244546591960897785611450672149658203125p542 < -1.0382439285912827831026561398175545036792755126953125p107 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000011101 #b0100111111110110001110010000110001010101000100100000)))
(assert (= y (fp #b1 #b10001101010 #b0000100111001010010110101010011010010001111100110101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2188946408479328642471273269620724022388458251953125p493 {- 985813822956149 493 (-3.11712e+148)}
; Y = -1.7203134061943028410013312168302945792675018310546875p-766 {- 3244003187726635 -766 (-4.43232e-231)}
; -1.2188946408479328642471273269620724022388458251953125p493 < -1.7203134061943028410013312168302945792675018310546875p-766 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111101100 #b0011100000001001011110101010101110110110001001110101)))
(assert (= y (fp #b1 #b00100000001 #b1011100001100110011101011001101001111001100100101011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.27024127503417094686710697715170681476593017578125p-909 {- 1217058505544020 -909 (-2.93508e-274)}
; Y = -1.4105452908645637055684574079350568354129791259765625p-336 {- 1848931618956361 -336 (-1.00765e-101)}
; -1.27024127503417094686710697715170681476593017578125p-909 = -1.4105452908645637055684574079350568354129791259765625p-336 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001110010 #b0100010100101110100010000011111001001101000101010100)))
(assert (= y (fp #b1 #b01010101111 #b0110100100011001011111110000010111001010010001001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

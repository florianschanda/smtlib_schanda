(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3722028848430813940950656615314073860645294189453125p5 {- 1676252773485525 5 (-43.9105)}
; Y = 1.5794622561740612187719534631469286978244781494140625p-137 {+ 2609666000980769 -137 (9.06567e-042)}
; -1.3722028848430813940950656615314073860645294189453125p5 < 1.5794622561740612187719534631469286978244781494140625p-137 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000100 #b0101111101001000101100000011000111100000101111010101)))
(assert (= y (fp #b0 #b01101110110 #b1001010001010111101000110110111110001000101100100001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

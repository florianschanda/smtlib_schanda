(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0941877601158103150424949490115977823734283447265625p-746 {- 424183961360425 -746 (-2.95607e-225)}
; Y = 1.5684766538062520080387685084133408963680267333984375p-799 {+ 2560191246250663 -799 (4.70448e-241)}
; -1.0941877601158103150424949490115977823734283447265625p-746 < 1.5684766538062520080387685084133408963680267333984375p-799 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100010101 #b0001100000011100101100000110010101100001100000101001)))
(assert (= y (fp #b0 #b00011100000 #b1001000110000111101011111001110010100011001010100111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

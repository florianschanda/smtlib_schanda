(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6053115573854626063621253706514835357666015625p-454 {+ 2726080904284224 -454 (3.45097e-137)}
; Y = -1.0544551345791337571000667594489641487598419189453125p-275 {- 245244123798997 -275 (-1.73692e-083)}
; 1.6053115573854626063621253706514835357666015625p-454 > -1.0544551345791337571000667594489641487598419189453125p-275 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111001 #b1001101011110101101100101011111011011100100001000000)))
(assert (= y (fp #b1 #b01011101100 #b0000110111110000110001011000111000011101110111010101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

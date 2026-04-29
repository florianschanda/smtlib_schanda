(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5479295054468946712944443788728676736354827880859375p-58 {- 2467655116555935 -58 (-5.37046e-018)}
; Y = 1.6285884863954314116796240341500379145145416259765625p679 {+ 2830910873099849 679 (4.08487e+204)}
; -1.5479295054468946712944443788728676736354827880859375p-58 < 1.6285884863954314116796240341500379145145416259765625p679 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000101 #b1000110001000101000110111010101001101000011010011111)))
(assert (= y (fp #b0 #b11010100110 #b1010000011101011001011001100111110110101111001001001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

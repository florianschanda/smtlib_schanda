(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7847902023975859009397026966325938701629638671875p408 {- 3534380863081784 408 (-1.17985e+123)}
; Y = -1.1533059499584741303124246769584715366363525390625p42 {- 690428619106664 42 (-5.07229e+012)}
; -1.7847902023975859009397026966325938701629638671875p408 > -1.1533059499584741303124246769584715366363525390625p42 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110010111 #b1100100011101000000000101011110110000100110100111000)))
(assert (= y (fp #b1 #b10000101001 #b0010011100111111000011110000100101011010100101101000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

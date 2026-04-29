(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.869024676282939889659928667242638766765594482421875p449 {+ 3913739208283614 449 (2.71696e+135)}
; Y = 1.9100216261144515872416604906902648508548736572265625p345 {+ 4098373056268137 345 (1.36895e+104)}
; 1.869024676282939889659928667242638766765594482421875p449 < 1.9100216261144515872416604906902648508548736572265625p345 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111000000 #b1101111001111000011001101011010000001101010111011110)))
(assert (= y (fp #b0 #b10101011000 #b1110100011110111001011010110001011010000011101101001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

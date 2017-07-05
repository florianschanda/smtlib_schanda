(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5983868083851502372993991230032406747341156005859375p-32 {+ 2694894607266783 -32 (3.72153e-010)}
; Y = -1.17526853738874148547211007098667323589324951171875p-941 {- 789339319673708 -941 (-6.32283e-284)}
; 1.5983868083851502372993991230032406747341156005859375p-32 > -1.17526853738874148547211007098667323589324951171875p-941 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011111 #b1001100100101111111000001011110001011111001111011111)))
(assert (= y (fp #b1 #b00001010010 #b0010110011011110011001100001110000011010001101101100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

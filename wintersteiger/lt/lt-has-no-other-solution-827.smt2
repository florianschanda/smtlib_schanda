(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.33379935182280906502683137659914791584014892578125p617 {- 1503298636485716 617 (-7.25434e+185)}
; Y = -1.3729918262184572785855607435223646461963653564453125p-841 {- 1679805849569685 -841 (-9.36357e-254)}
; -1.33379935182280906502683137659914791584014892578125p617 < -1.3729918262184572785855607435223646461963653564453125p-841 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001101000 #b0101010101110011110111111101001110000001010001010100)))
(assert (= y (fp #b1 #b00010110110 #b0101111101111100011001000110111101001000100110010101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

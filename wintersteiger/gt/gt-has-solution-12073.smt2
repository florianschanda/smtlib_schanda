(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1284104029824162385153840659768320620059967041015625p-476 {- 578309043022105 -476 (-5.78348e-144)}
; Y = 1.025054973596590368600800502463243901729583740234375p991 {+ 112837569753382 991 (2.14523e+298)}
; -1.1284104029824162385153840659768320620059967041015625p-476 > 1.025054973596590368600800502463243901729583740234375p991 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100011 #b0010000011011111100000010001000101000110100100011001)))
(assert (= y (fp #b0 #b11111011110 #b0000011001101010000000001011010000110011000100100110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

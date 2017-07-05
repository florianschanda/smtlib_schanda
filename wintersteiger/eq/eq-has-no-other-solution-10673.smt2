(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7991405991530318164706159222987480461597442626953125p910 {+ 3599009304562229 910 (1.55726e+274)}
; Y = 1.119861752309494473678341819322668015956878662109375p397 {+ 539809343037014 397 (3.6147e+119)}
; 1.7991405991530318164706159222987480461597442626953125p910 = 1.119861752309494473678341819322668015956878662109375p397 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110001101 #b1100110010010100011110100111001001000100101000110101)))
(assert (= y (fp #b0 #b10110001100 #b0001111010101111010000101000001000110101111001010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

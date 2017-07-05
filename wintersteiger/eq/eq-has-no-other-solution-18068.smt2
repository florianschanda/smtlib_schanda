(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7971683407434770884947283775545656681060791015625p389 {- 3590127042323880 389 (-2.26599e+117)}
; Y = -1.7674023653746433470956844757893122732639312744140625p-573 {- 3456073006744481 -573 (-5.71673e-173)}
; -1.7971683407434770884947283775545656681060791015625p389 = -1.7674023653746433470956844757893122732639312744140625p-573 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110000100 #b1100110000010011001110010111000011100110010110101000)))
(assert (= y (fp #b1 #b00111000010 #b1100010001110100011110110011111000101000001110100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

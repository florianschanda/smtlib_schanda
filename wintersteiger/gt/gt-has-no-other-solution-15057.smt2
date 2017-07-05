(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.117513063386471827698187553323805332183837890625p684 {- 529231788478480 684 (-8.96953e+205)}
; Y = -1.6414357373765871006554561972734518349170684814453125p-65 {- 2888769747831317 -65 (-4.44912e-020)}
; -1.117513063386471827698187553323805332183837890625p684 > -1.6414357373765871006554561972734518349170684814453125p-65 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010101011 #b0001111000010101010101100000110000011001000000010000)))
(assert (= y (fp #b1 #b01110111110 #b1010010000110101001000011110101010000100101000010101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

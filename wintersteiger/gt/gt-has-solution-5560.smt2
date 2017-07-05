(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.99252364429378925336777683696709573268890380859375p-451 {+ 4469929114597916 -451 (3.42669e-136)}
; Y = -1.9810851700057476865168837321107275784015655517578125p-1004 {- 4418414806056605 -1004 (-1.15555e-302)}
; 1.99252364429378925336777683696709573268890380859375p-451 > -1.9810851700057476865168837321107275784015655517578125p-1004 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111100 #b1111111000010110000001111001000010111111101000011100)))
(assert (= y (fp #b1 #b00000010011 #b1111101100101000011001011100111111000011111010011101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

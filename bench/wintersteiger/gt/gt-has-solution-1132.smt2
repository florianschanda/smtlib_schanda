(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.941815821293965793614688664092682301998138427734375p543 {- 4241561381831142 543 (-5.59108e+163)}
; Y = -1.27574853942504784498623848776333034038543701171875p-680 {- 1241861019402604 -680 (-2.54313e-205)}
; -1.941815821293965793614688664092682301998138427734375p543 > -1.27574853942504784498623848776333034038543701171875p-680 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000011110 #b1111000100011010110101110111011101010000000111100110)))
(assert (= y (fp #b1 #b00101010111 #b0100011010010111011101001100111011000000000101101100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

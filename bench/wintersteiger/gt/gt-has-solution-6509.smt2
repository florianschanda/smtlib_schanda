(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.074247224451348348139845256810076534748077392578125p-187 {+ 334379772372386 -187 (5.4764e-057)}
; Y = -1.7937866862631317577125855677877552807331085205078125p-639 {- 3574897424466301 -639 (-7.86328e-193)}
; 1.074247224451348348139845256810076534748077392578125p-187 > -1.7937866862631317577125855677877552807331085205078125p-639 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000100 #b0001001100000001110111011011100011010110010110100010)))
(assert (= y (fp #b1 #b00110000000 #b1100101100110101100110101011000110000000000101111101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

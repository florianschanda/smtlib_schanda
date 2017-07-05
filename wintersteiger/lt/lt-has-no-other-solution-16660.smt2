(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.24994668986136847621537526720203459262847900390625p630 {+ 1125659819322148 630 (5.56915e+189)}
; Y = -1.9326900683929750801581803898443467915058135986328125p-349 {- 4200462644466765 -349 (-1.68536e-105)}
; 1.24994668986136847621537526720203459262847900390625p630 < -1.9326900683929750801581803898443467915058135986328125p-349 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001110101 #b0011111111111100100000011001101010110010101100100100)))
(assert (= y (fp #b1 #b01010100010 #b1110111011000100110001101011110100001101010001001101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0408943050904289062685847966349683701992034912109375p-72 {+ 184171577166831 -72 (2.20418e-022)}
; Y = -1.23411840377080483932559218374080955982208251953125p-184 {- 1054375555982772 -184 (-5.03312e-056)}
; 1.0408943050904289062685847966349683701992034912109375p-72 < -1.23411840377080483932559218374080955982208251953125p-184 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110110111 #b0000101001111000000011001001011011110100101111101111)))
(assert (= y (fp #b1 #b01101000111 #b0011101111101111001011110000011110010110010110110100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

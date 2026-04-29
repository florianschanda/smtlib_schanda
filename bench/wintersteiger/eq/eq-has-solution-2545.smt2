(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8432520815846584749664316404960118234157562255859375p-235 {- 3797669760404063 -235 (-3.33838e-071)}
; Y = 1.606874048424112633171034758561290800571441650390625p561 {+ 2733117738343658 561 (1.21286e+169)}
; -1.8432520815846584749664316404960118234157562255859375p-235 = 1.606874048424112633171034758561290800571441650390625p561 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100010100 #b1101011111011111010111100101000010110000101001011111)))
(assert (= y (fp #b0 #b11000110000 #b1001101101011100000110001111111011000101110011101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

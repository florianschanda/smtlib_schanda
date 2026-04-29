(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1091516602649218459220037402701564133167266845703125p-343 {- 491575376495973 -343 (-6.19017e-104)}
; Y = 1.046234737888126264948596144677139818668365478515625p-348 {+ 208222748324538 -348 (1.8247e-105)}
; -1.1091516602649218459220037402701564133167266845703125p-343 = 1.046234737888126264948596144677139818668365478515625p-348 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010101000 #b0001101111110001010111001111101100100100010101100101)))
(assert (= y (fp #b0 #b01010100011 #b0000101111010110000010100010111100101011001010111010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

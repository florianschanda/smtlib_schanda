(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7997290088063631063874936444335617125034332275390625p865 {- 3601659266057713 865 (-4.42745e+260)}
; Y = 1.8634320449505434869053033253294415771961212158203125p-310 {+ 3888552235899013 -310 (8.93336e-094)}
; -1.7997290088063631063874936444335617125034332275390625p865 > 1.8634320449505434869053033253294415771961212158203125p-310 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100000 #b1100110010111011000010100101001001111100010111110001)))
(assert (= y (fp #b0 #b01011001001 #b1101110100001001111000011110101101100001100010000101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

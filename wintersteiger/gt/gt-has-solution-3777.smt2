(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5692963225886327194302793941460549831390380859375p895 {- 2563882706273560 895 (-4.14525e+269)}
; Y = -1.4075730472307801388609505011118017137050628662109375p-652 {- 1835545823634799 -652 (-7.53206e-197)}
; -1.5692963225886327194302793941460549831390380859375p895 > -1.4075730472307801388609505011118017137050628662109375p-652 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111110 #b1001000110111101011001110101111101000000010100011000)))
(assert (= y (fp #b1 #b00101110011 #b0110100001010110101101010000110010010110010101101111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

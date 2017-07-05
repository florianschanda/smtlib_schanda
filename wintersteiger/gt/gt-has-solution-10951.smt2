(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.06125286663539153408919446519576013088226318359375p-378 {+ 275858387354524 -378 (1.72377e-114)}
; Y = -1.474636621413727421980865983641706407070159912109375p1021 {- 2137573311335254 1021 (-3.31368e+307)}
; 1.06125286663539153408919446519576013088226318359375p-378 > -1.474636621413727421980865983641706407070159912109375p1021 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010000101 #b0000111110101110010001001001001011111100001110011100)))
(assert (= y (fp #b1 #b11111111100 #b0111100110000001110010010001111001110100101101010110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

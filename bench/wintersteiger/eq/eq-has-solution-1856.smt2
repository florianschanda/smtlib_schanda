(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.780857644799060945928204091615043580532073974609375p-514 {- 3516670198146454 -514 (-3.32056e-155)}
; Y = -1.4727495262812302367905203936970792710781097412109375p846 {- 2129074590399727 846 (-6.91043e+254)}
; -1.780857644799060945928204091615043580532073974609375p-514 = -1.4727495262812302367905203936970792710781097412109375p846 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111111101 #b1100011111100110010010010101111100111110010110010110)))
(assert (= y (fp #b1 #b11101001101 #b0111100100000110000111001110101010010011110011101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

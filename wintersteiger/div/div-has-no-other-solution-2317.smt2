(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.05590211957746138438096750178374350070953369140625p558 {+ 251760764898276 558 (9.96234e+167)}
; Y = -1.6504008122928013335695140995085239410400390625p-399 {- 2929144855883328 -399 (-1.27827e-120)}
; 1.05590211957746138438096750178374350070953369140625p558 / -1.6504008122928013335695140995085239410400390625p-399 == -1.279570528216792180131733402959071099758148193359375p956
; [HW: -1.279570528216792180131733402959071099758148193359375p956] 

; mpf : - 1259073726700918 956
; mpfd: - 1259073726700918 956 (-7.79364e+287) class: Neg. norm. non-zero
; hwf : - 1259073726700918 956 (-7.79364e+287) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000101101 #b0000111001001111100110011110111101011100101111100100)))
(assert (= y (fp #b1 #b01001110000 #b1010011010000000101010101110101000010110111001000000)))
(assert (= r (fp #b1 #b11110111011 #b0100011110010001111011110010001110011101110101110110)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

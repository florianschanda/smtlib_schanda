(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.904047211632672986780789869953878223896026611328125p-395 {+ 4071466685434242 -395 (2.35955e-119)}
; Y = -1.8618578927053441862682348073576577007770538330078125p949 {- 3881462884434109 949 (-8.85957e+285)}
; 1.904047211632672986780789869953878223896026611328125p-395 * -1.8618578927053441862682348073576577007770538330078125p949 == -1.7725326645309475992462466820143163204193115234375p555
; [HW: -1.7725326645309475992462466820143163204193115234375p555] 

; mpf : - 3479177820113112 555
; mpfd: - 3479177820113112 555 (-2.09046e+167) class: Neg. norm. non-zero
; hwf : - 3479177820113112 555 (-2.09046e+167) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001110100 #b1110011101101111101000110101100000000000100110000010)))
(assert (= y (fp #b1 #b11110110100 #b1101110010100010101110000000011011111000000010111101)))
(assert (= r (fp #b1 #b11000101010 #b1100010111000100101100110110000101000000100011011000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

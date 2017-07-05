(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7149469067559228729891174225485883653163909912109375p65 {- 3219834622855663 65 (-6.32704e+019)}
; Y = -1.1449032875797422459385188631131313741207122802734375p-228 {- 652586391948887 -228 (-2.65418e-069)}
; -1.7149469067559228729891174225485883653163909912109375p65 % -1.1449032875797422459385188631131313741207122802734375p-228 == -1.582143456374662804364561452530324459075927734375p-229
; [HW: -1.582143456374662804364561452530324459075927734375p-229] 

; mpf : - 2621741053205104 -229
; mpfd: - 2621741053205104 -229 (-1.83391e-069) class: Neg. norm. non-zero
; hwf : - 2621741053205104 -229 (-1.83391e-069) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001000000 #b1011011100000110110000101010111011100100100111101111)))
(assert (= y (fp #b1 #b01100011011 #b0010010100011000011000011100000100111100111001010111)))
(assert (= r (fp #b0 #b01100011001 #x6a52d1ff8847c)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

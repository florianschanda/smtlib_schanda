(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8746318016092733405031367510673590004444122314453125p-912 {+ 3938991455813909 -912 (5.41452e-275)}
; Y = 1.3211083064322546309909967021667398512363433837890625p-190 {+ 1446143249193873 -190 (8.41859e-058)}
; 1.8746318016092733405031367510673590004444122314453125p-912 + 1.3211083064322546309909967021667398512363433837890625p-190 == 1.3211083064322546309909967021667398512363433837890625p-190
; [HW: 1.3211083064322546309909967021667398512363433837890625p-190] 

; mpf : + 1446143249193873 -190
; mpfd: + 1446143249193873 -190 (8.41859e-058) class: Pos. norm. non-zero
; hwf : + 1446143249193873 -190 (8.41859e-058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101111 #b1101111111100111110111101010011111110100000100010101)))
(assert (= y (fp #b0 #b01101000001 #b0101001000110100001001110110101010011001101110010001)))
(assert (= r (fp #b0 #b01101000001 #b0101001000110100001001110110101010011001101110010001)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

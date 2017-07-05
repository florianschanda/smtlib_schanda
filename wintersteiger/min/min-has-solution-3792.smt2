(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7089569202041021700466671973117627203464508056640625p739 {- 3192858121652929 739 (-4.94195e+222)}
; Y = 1.000918054351045416439092150540091097354888916015625p93 {+ 4134549233274 93 (9.91261e+027)}
; -1.7089569202041021700466671973117627203464508056640625p739 m 1.000918054351045416439092150540091097354888916015625p93 == -1.7089569202041021700466671973117627203464508056640625p739
; [HW: -1.7089569202041021700466671973117627203464508056640625p739] 

; mpf : - 3192858121652929 739
; mpfd: - 3192858121652929 739 (-4.94195e+222) class: Neg. norm. non-zero
; hwf : - 3192858121652929 739 (-4.94195e+222) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011100010 #b1011010101111110001100110110001010001100101011000001)))
(assert (= y (fp #b0 #b10001011100 #b0000000000111100001010100110010101101001111001111010)))
(assert (= r (fp #b1 #b11011100010 #b1011010101111110001100110110001010001100101011000001)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

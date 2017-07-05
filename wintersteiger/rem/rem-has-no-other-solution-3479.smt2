(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.175997730293456999817180985701270401477813720703125p99 {- 792623312567666 99 (-7.45377e+029)}
; Y = -1.694500726055138795089760606060735881328582763671875p-981 {- 3127753211070462 -981 (-8.29117e-296)}
; -1.175997730293456999817180985701270401477813720703125p99 % -1.694500726055138795089760606060735881328582763671875p-981 == -1.20914466686513577542427810840308666229248046875p-983
; [HW: -1.20914466686513577542427810840308666229248046875p-983] 

; mpf : - 941903843760352 -983
; mpfd: - 941903843760352 -983 (-1.47908e-296) class: Neg. norm. non-zero
; hwf : - 941903843760352 -983 (-1.47908e-296) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001100010 #b0010110100001110001011111110111111000111110101110010)))
(assert (= y (fp #b1 #b00000101010 #b1011000111001010110011001011000101110100011111111110)))
(assert (= r (fp #b1 #b00000101000 #x358a8140518e0)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

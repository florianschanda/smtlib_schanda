(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5124839159308647307256023850641213357448577880859375p28 {- 2308022372819615 28 (-4.06004e+008)}
; Y = 1.9874132374062323247443373475107364356517791748046875p-516 {+ 4446913888043403 -516 (9.26425e-156)}
; -1.5124839159308647307256023850641213357448577880859375p28 m 1.9874132374062323247443373475107364356517791748046875p-516 == -1.5124839159308647307256023850641213357448577880859375p28
; [HW: -1.5124839159308647307256023850641213357448577880859375p28] 

; mpf : - 2308022372819615 28
; mpfd: - 2308022372819615 28 (-4.06004e+008) class: Neg. norm. non-zero
; hwf : - 2308022372819615 28 (-4.06004e+008) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000011011 #b1000001100110010001001010101101010100110001010011111)))
(assert (= y (fp #b0 #b00111111011 #b1111110011000111000111010010101001001100000110001011)))
(assert (= r (fp #b1 #b10000011011 #b1000001100110010001001010101101010100110001010011111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

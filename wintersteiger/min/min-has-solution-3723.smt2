(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1437426384709825644137026756652630865573883056640625p411 {+ 647359293055169 411 (6.04862e+123)}
; Y = -1.4224615759096959077822930339607410132884979248046875p295 {- 1902597795845259 295 (-9.05502e+088)}
; 1.1437426384709825644137026756652630865573883056640625p411 m -1.4224615759096959077822930339607410132884979248046875p295 == -1.4224615759096959077822930339607410132884979248046875p295
; [HW: -1.4224615759096959077822930339607410132884979248046875p295] 

; mpf : - 1902597795845259 295
; mpfd: - 1902597795845259 295 (-9.05502e+088) class: Neg. norm. non-zero
; hwf : - 1902597795845259 295 (-9.05502e+088) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110011010 #b0010010011001100010100010100101101000110000011000001)))
(assert (= y (fp #b1 #b10100100110 #b0110110000100110011100010001110001011001010010001011)))
(assert (= r (fp #b1 #b10100100110 #b0110110000100110011100010001110001011001010010001011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

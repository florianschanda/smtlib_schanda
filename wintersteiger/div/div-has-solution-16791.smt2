(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.472190559891220829058511299081146717071533203125p-70 {+ 2126557229573968 -70 (1.24699e-021)}
; Y = -1.0370767644375877836182553437538444995880126953125p-244 {- 166978902505224 -244 (-3.66853e-074)}
; 1.472190559891220829058511299081146717071533203125p-70 / -1.0370767644375877836182553437538444995880126953125p-244 == -1.419557944381867997662993730045855045318603515625p174
; [HW: -1.419557944381867997662993730045855045318603515625p174] 

; mpf : - 1889521001978512 174
; mpfd: - 1889521001978512 174 (-3.39917e+052) class: Neg. norm. non-zero
; hwf : - 1889521001978512 174 (-3.39917e+052) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110111001 #b0111100011100001011110110000010000110110011101010000)))
(assert (= y (fp #b1 #b01100001011 #b0000100101111101110111001110001010110011011100001000)))
(assert (= r (fp #b1 #b10010101101 #b0110101101101000001001100100000111100101101010010000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

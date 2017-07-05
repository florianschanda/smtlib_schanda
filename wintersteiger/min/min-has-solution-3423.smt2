(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3669321252175337111367525722016580402851104736328125p-951 {+ 1652515382399949 -951 (7.1816e-287)}
; Y = -1.65881994453780468035120065906085073947906494140625p-901 {- 2967061256724708 -901 (-9.81235e-272)}
; 1.3669321252175337111367525722016580402851104736328125p-951 m -1.65881994453780468035120065906085073947906494140625p-901 == -1.65881994453780468035120065906085073947906494140625p-901
; [HW: -1.65881994453780468035120065906085073947906494140625p-901] 

; mpf : - 2967061256724708 -901
; mpfd: - 2967061256724708 -901 (-9.81235e-272) class: Neg. norm. non-zero
; hwf : - 2967061256724708 -901 (-9.81235e-272) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001001000 #b0101110111101111010000111000010110101001001111001101)))
(assert (= y (fp #b1 #b00001111010 #b1010100010101000011011001000001110111110000011100100)))
(assert (= r (fp #b1 #b00001111010 #b1010100010101000011011001000001110111110000011100100)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

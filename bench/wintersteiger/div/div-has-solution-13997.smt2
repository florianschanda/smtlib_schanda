(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7059870018455338680496424785815179347991943359375p-998 {+ 3179482798439960 -998 (6.36854e-301)}
; Y = -1.0328694998006913152721608639694750308990478515625p116 {- 148031067054248 116 (-8.58074e+034)}
; 1.7059870018455338680496424785815179347991943359375p-998 / -1.0328694998006913152721608639694750308990478515625p116 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000011001 #b1011010010111011100100000110110001010011111000011000)))
(assert (= y (fp #b1 #b10001110011 #b0000100001101010001000101011001010101110000010101000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)

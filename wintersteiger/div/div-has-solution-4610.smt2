(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7317605707234211553924296822515316307544708251953125p-586 {- 3295556633634421 -586 (-6.83771e-177)}
; Y = 1.938415425663901903163832685095258057117462158203125p621 {+ 4226247361338674 621 (1.68684e+187)}
; -1.7317605707234211553924296822515316307544708251953125p-586 / 1.938415425663901903163832685095258057117462158203125p621 == -0.0000000000000002220446049250313080847263336181640625p-1022
; [HW: -0.0000000000000002220446049250313080847263336181640625p-1022] 

; mpf : - 1 -1023
; mpfd: - 1 -1023 (-4.94066e-324) class: Neg. denorm.
; hwf : - 1 -1023 (-4.94066e-324) class: Neg. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110110101 #b1011101101010100101010010010011111000010011001110101)))
(assert (= y (fp #b0 #b11001101100 #b1111000000111011111111100100101101001001110100110010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7348182844122297385780484546558000147342681884765625p542 {- 3309327351863945 542 (-2.49754e+163)}
; Y = 1.0252295437115532816818586070439778268337249755859375p-533 {+ 113623763658079 -533 (3.64614e-161)}
; -1.7348182844122297385780484546558000147342681884765625p542 + 1.0252295437115532816818586070439778268337249755859375p-533 == -1.7348182844122297385780484546558000147342681884765625p542
; [HW: -1.7348182844122297385780484546558000147342681884765625p542] 

; mpf : - 3309327351863945 542
; mpfd: - 3309327351863945 542 (-2.49754e+163) class: Neg. norm. non-zero
; hwf : - 3309327351863945 542 (-2.49754e+163) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000011101 #b1011110000011101000011010001010000001101101010001001)))
(assert (= y (fp #b0 #b00111101010 #b0000011001110101011100011000000100100010010101011111)))
(assert (= r (fp #b1 #b11000011101 #b1011110000011101000011010001010000001101101010001001)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

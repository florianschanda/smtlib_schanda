(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.31198885528738884431732003577053546905517578125p-841 {- 1405072892416032 -841 (-8.94754e-254)}
; +zero + -1.31198885528738884431732003577053546905517578125p-841 == -1.31198885528738884431732003577053546905517578125p-841
; [HW: -1.31198885528738884431732003577053546905517578125p-841] 

; mpf : - 1405072892416032 -841
; mpfd: - 1405072892416032 -841 (-8.94754e-254) class: Neg. norm. non-zero
; hwf : - 1405072892416032 -841 (-8.94754e-254) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00010110110 #b0100111111011110100000000110101000101101000000100000)))
(assert (= r (fp #b1 #b00010110110 #b0100111111011110100000000110101000101101000000100000)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)

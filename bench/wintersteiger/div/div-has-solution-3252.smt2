(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3905190680510763900912252211128361523151397705078125p-668 {+ 1758741529355901 -668 (1.13538e-201)}
; Y = -1.839501668861052596781746615306474268436431884765625p552 {- 3780779403059546 552 (-2.7118e+166)}
; 1.3905190680510763900912252211128361523151397705078125p-668 / -1.839501668861052596781746615306474268436431884765625p552 == -zero
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
(assert (= x (fp #b0 #b00101100011 #b0110001111111001000011101100000110111110011001111101)))
(assert (= y (fp #b1 #b11000100111 #b1101011011101001100101001101010010110010000101011010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)

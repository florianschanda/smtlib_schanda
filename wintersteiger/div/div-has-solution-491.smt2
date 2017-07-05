(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8444371060662427819210051893605850636959075927734375p-817 {- 3803006636217751 -817 (-2.11036e-246)}
; Y = 1.3127872368654853740821408791816793382167816162109375p664 {+ 1408668483393647 664 (1.00487e+200)}
; -1.8444371060662427819210051893605850636959075927734375p-817 / 1.3127872368654853740821408791816793382167816162109375p664 == -0.0000000000000002220446049250313080847263336181640625p-1022
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
(assert (= x (fp #b1 #b00011001110 #b1101100000101101000001111011101000010101010110010111)))
(assert (= y (fp #b0 #b11010010111 #b0101000000010010110100110000100011110001100001101111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)

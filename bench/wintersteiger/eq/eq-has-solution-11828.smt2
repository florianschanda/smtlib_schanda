(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.394714918115466328885077018640004098415374755859375p1011 {+ 1777637958142390 1011 (3.06063e+304)}
; Y = -1.1722064153125792973497709681396372616291046142578125p-947 {- 775548747832541 -947 (-9.85367e-286)}
; 1.394714918115466328885077018640004098415374755859375p1011 = -1.1722064153125792973497709681396372616291046142578125p-947 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111110010 #b0110010100001100000010010111000010001100100110110110)))
(assert (= y (fp #b1 #b00001001100 #b0010110000010101101110000011100111101101110011011101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

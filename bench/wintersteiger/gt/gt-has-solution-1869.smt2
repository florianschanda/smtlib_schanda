(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.165240833343182291770290248678065836429595947265625p-963 {- 744178555470746 -963 (-1.49462e-290)}
; Y = -1.6143592441012188931637183486600406467914581298828125p951 {- 2766828062805869 951 (-3.07274e+286)}
; -1.165240833343182291770290248678065836429595947265625p-963 > -1.6143592441012188931637183486600406467914581298828125p951 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000111100 #b0010101001001101001110010010011100101100001110011010)))
(assert (= y (fp #b1 #b11110110110 #b1001110101000110101001011011110101101000111101101101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6793710338904490608769037862657569348812103271484375p898 {+ 3059615135075335 898 (3.54881e+270)}
; Y = -1.6387169396525138598263993117143400013446807861328125p960 {- 2876525371414285 960 (-1.59698e+289)}
; 1.6793710338904490608769037862657569348812103271484375p898 = -1.6387169396525138598263993117143400013446807861328125p960 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110000001 #b1010110111101011010000101001010001101000110000000111)))
(assert (= y (fp #b1 #b11110111111 #b1010001110000010111101000000111100110101011100001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

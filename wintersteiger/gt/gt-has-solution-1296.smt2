(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3851418145260512293504007175215519964694976806640625p208 {- 1734524532384321 208 (-5.69814e+062)}
; Y = -1.364584535593942771214415188296698033809661865234375p675 {- 1641942778645926 675 (-2.13918e+203)}
; -1.3851418145260512293504007175215519964694976806640625p208 > -1.364584535593942771214415188296698033809661865234375p675 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011001111 #b0110001010011000101001110110100110110110001001000001)))
(assert (= y (fp #b1 #b11010100010 #b0101110101010101011010011000000100000000110110100110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

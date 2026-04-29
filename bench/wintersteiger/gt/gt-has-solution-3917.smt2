(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6172078993382179579185731199686415493488311767578125p-1006 {- 2779657265469725 -1006 (-2.35825e-303)}
; Y = -1.84527555601951309682817736756987869739532470703125p1017 {- 3806782679114868 1017 (-2.59159e+306)}
; -1.6172078993382179579185731199686415493488311767578125p-1006 > -1.84527555601951309682817736756987869739532470703125p1017 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000010001 #b1001111000000001010101100011111001111101100100011101)))
(assert (= y (fp #b1 #b11111111000 #b1101100001100011111110101001010100110110010001110100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

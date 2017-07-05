(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4442328735634284431199603204731829464435577392578125p-895 {- 2000647003845981 -895 (-5.46753e-270)}
; Y = -1.684949629568087470232740088249556720256805419921875p112 {- 3084738896490398 112 (-8.74876e+033)}
; -1.4442328735634284431199603204731829464435577392578125p-895 > -1.684949629568087470232740088249556720256805419921875p112 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000000 #b0111000110111001001111101101111111000011010101011101)))
(assert (= y (fp #b1 #b10001101111 #b1010111101011000110110111110001001100110111110011110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

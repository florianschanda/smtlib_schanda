(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2439727481148172838487653280026279389858245849609375p-38 {+ 1098755577498447 -38 (4.52555e-012)}
; Y = -1.758367411597937302047967023099772632122039794921875p423 {- 3415383192282398 423 (-3.80888e+127)}
; 1.2439727481148172838487653280026279389858245849609375p-38 > -1.758367411597937302047967023099772632122039794921875p423 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011001 #b0011111001110100111111110111111001000100101101001111)))
(assert (= y (fp #b1 #b10110100110 #b1100001000100100010111011101111100101010010100011110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

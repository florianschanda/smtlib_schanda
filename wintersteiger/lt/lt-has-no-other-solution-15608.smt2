(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5120712519481285251998770036152563989162445068359375p-923 {+ 2306163899460735 -923 (2.13249e-278)}
; Y = 1.8862767188537310492080223411903716623783111572265625p221 {+ 3991435500776809 221 (6.35674e+066)}
; 1.5120712519481285251998770036152563989162445068359375p-923 < 1.8862767188537310492080223411903716623783111572265625p221 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001100100 #b1000001100010111000110100000000001010110110001111111)))
(assert (= y (fp #b0 #b10011011100 #b1110001011100011000001111111001010101110110101101001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

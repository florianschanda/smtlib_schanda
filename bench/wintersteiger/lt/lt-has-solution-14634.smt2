(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.3150979152279800299396583795896731317043304443359375p452 {+ 1419074853605951 452 (1.52938e+136)}
; +zero < 1.3150979152279800299396583795896731317043304443359375p452 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10111000011 #b0101000010101010010000011100100011110001001000111111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

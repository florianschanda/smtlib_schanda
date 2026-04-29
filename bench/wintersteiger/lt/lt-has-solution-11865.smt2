(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4019222890671050318900370257324539124965667724609375p-967 {+ 1810097071274511 -967 (1.12388e-291)}
; Y = 1.4521821121600684278973858454264700412750244140625p-265 {+ 2036447191827688 -265 (2.44947e-080)}
; 1.4019222890671050318900370257324539124965667724609375p-967 < 1.4521821121600684278973858454264700412750244140625p-265 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000111000 #b0110011011100100011000010000111100010011101000001111)))
(assert (= y (fp #b0 #b01011110110 #b0111001111000010001101001111011110010000010011101000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5910928028293811475890606743632815778255462646484375p-64 {+ 2662045326563783 -64 (8.62533e-020)}
; Y = 1.4101187462150619467138312757015228271484375p-588 {+ 1847010632631808 -588 (1.39193e-177)}
; 1.5910928028293811475890606743632815778255462646484375p-64 = 1.4101187462150619467138312757015228271484375p-588 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110111111 #b1001011101010001110110111010000100001101100111000111)))
(assert (= y (fp #b0 #b00110110011 #b0110100011111101100010101100101001111000011000000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

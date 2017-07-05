(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7549763909695015318135347115457989275455474853515625p893 {- 3400111393043769 893 (-1.15893e+269)}
; Y = 1.416742536772662930388833046890795230865478515625p-897 {+ 1876841533318800 -897 (1.34086e-270)}
; -1.7549763909695015318135347115457989275455474853515625p893 < 1.416742536772662930388833046890795230865478515625p-897 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111100 #b1100000101000110001000011111110001110111010100111001)))
(assert (= y (fp #b0 #b00001111110 #b0110101010101111101000111000111001001010011010010000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

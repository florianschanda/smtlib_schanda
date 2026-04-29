(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3164344354576444917626076858141459524631500244140625p660 {+ 1425094005614241 660 (6.29791e+198)}
; Y = -0.617295819751819241361090462305583059787750244140625p-1022 {- 2780053223811658 -1023 (-1.37353e-308)}
; 1.3164344354576444917626076858141459524631500244140625p660 > -0.617295819751819241361090462305583059787750244140625p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010010011 #b0101000100000001110110001101111110011110011010100001)))
(assert (= y (fp #b1 #b00000000000 #b1001111000000111000110010100110111001010101001001010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

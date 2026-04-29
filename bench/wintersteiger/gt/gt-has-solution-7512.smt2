(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.060197072723746192224325568531639873981475830078125p-665 {+ 271103514287458 -665 (6.92531e-201)}
; Y = -1.789055101471948461266947560943663120269775390625p-590 {- 3553588260963856 -590 (-4.41495e-178)}
; 1.060197072723746192224325568531639873981475830078125p-665 > -1.789055101471948461266947560943663120269775390625p-590 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101100110 #b0000111101101001000100110100101010101001110101100010)))
(assert (= y (fp #b1 #b00110110001 #b1100100111111111100000111101111110010000011000010000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

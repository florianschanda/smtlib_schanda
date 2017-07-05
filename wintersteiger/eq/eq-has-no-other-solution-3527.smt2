(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.238435810034554496184000527136959135532379150390625p79 {+ 1073819425223402 79 (7.48589e+023)}
; Y = 1.4173564564044871527670466093695722520351409912109375p447 {+ 1879606381543919 447 (5.15095e+134)}
; 1.238435810034554496184000527136959135532379150390625p79 = 1.4173564564044871527670466093695722520351409912109375p447 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001001110 #b0011110100001010001000010001011001001011001011101010)))
(assert (= y (fp #b0 #b10110111110 #b0110101011010111110111110110101100001000000111101111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

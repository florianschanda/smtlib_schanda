(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.702943690807064758274691484984941780567169189453125p-947 {+ 3165776943981138 -947 (1.43151e-285)}
; Y = -1.1003022891892317858264505048282444477081298828125p280 {- 451721352217032 280 (-2.13752e+084)}
; 1.702943690807064758274691484984941780567169189453125p-947 = -1.1003022891892317858264505048282444477081298828125p280 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001100 #b1011001111110100000111100010001011110010001001010010)))
(assert (= y (fp #b1 #b10100010111 #b0001100110101101011010010010101111001000000111001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

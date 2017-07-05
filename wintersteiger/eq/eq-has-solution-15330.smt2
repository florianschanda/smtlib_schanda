(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.724443116976515089078247910947538912296295166015625p-729 {- 3262601751666554 -729 (-6.10635e-220)}
; Y = -1.0826040948802122532157454770640470087528228759765625p-261 {- 372015770921801 -261 (-2.92173e-079)}
; -1.724443116976515089078247910947538912296295166015625p-729 = -1.0826040948802122532157454770640470087528228759765625p-261 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100100110 #b1011100101110101000110101010011100111001111101111010)))
(assert (= y (fp #b1 #b01011111010 #b0001010100100101100010101011111000000110101101001001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

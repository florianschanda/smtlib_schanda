(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4374085030322520939449759680428542196750640869140625p944 {- 1969912771264737 944 (-2.13745e+284)}
; Y = -1.743194065311746587809693664894439280033111572265625p-497 {- 3347048515601946 -497 (-4.26028e-150)}
; -1.4374085030322520939449759680428542196750640869140625p944 = -1.743194065311746587809693664894439280033111572265625p-497 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110101111 #b0110111111111010000000001110111110000100000011100001)))
(assert (= y (fp #b1 #b01000001110 #b1011111001000001111101110101110100011000011000011010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

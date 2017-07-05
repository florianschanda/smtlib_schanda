(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.85464007028490929229747052886523306369781494140625p753 {- 3848956702071012 753 (-8.78712e+226)}
; Y = 1.4325207780978683747008517457288689911365509033203125p-594 {+ 1947900415071557 -594 (2.20945e-179)}
; -1.85464007028490929229747052886523306369781494140625p753 < 1.4325207780978683747008517457288689911365509033203125p-594 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011110000 #b1101101011001001101100010000111110111001100011100100)))
(assert (= y (fp #b0 #b00110101101 #b0110111010111001101011101000010011000101010101000101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

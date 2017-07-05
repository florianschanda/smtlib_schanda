(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.18343206947019741193116715294308960437774658203125p-351 {- 826104599713780 -351 (-2.57997e-106)}
; Y = 1.9095456276384243921029337798245251178741455078125p576 {+ 4096229349708872 576 (4.72289e+173)}
; -1.18343206947019741193116715294308960437774658203125p-351 > 1.9095456276384243921029337798245251178741455078125p576 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100000 #b0010111011110101011001110111001101101001011111110100)))
(assert (= y (fp #b0 #b11000111111 #b1110100011010111111110110111010011101101010001001000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1538215567598191224618631167686544358730316162109375p347 {- 692750705705071 347 (-3.30786e+104)}
; Y = -1.3029756956289058056341900737606920301914215087890625p75 {- 1364481229936657 75 (-4.9225e+022)}
; -1.1538215567598191224618631167686544358730316162109375p347 > -1.3029756956289058056341900737606920301914215087890625p75 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101011010 #b0010011101100000110110010111101110110100000001101111)))
(assert (= y (fp #b1 #b10001001010 #b0100110110001111110100001011000000110101100000010001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

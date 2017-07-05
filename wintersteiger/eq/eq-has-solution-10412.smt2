(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8823914885720913758859751396812498569488525390625p884 {- 3973937979128168 884 (-2.42787e+266)}
; Y = -1.7074751887803876204685593620524741709232330322265625p345 {- 3186184996565225 345 (-1.22378e+104)}
; -1.8823914885720913758859751396812498569488525390625p884 = -1.7074751887803876204685593620524741709232330322265625p345 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101110011 #b1110000111100100011010001001100110101111100101101000)))
(assert (= y (fp #b1 #b10101011000 #b1011010100011101000110000000111010001011000011101001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

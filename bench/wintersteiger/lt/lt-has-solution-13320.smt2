(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7414564710607525199748124578036367893218994140625p953 {- 3339223086780648 953 (-1.32586e+287)}
; Y = -1.4579804918310872441367109786369837820529937744140625p742 {- 2062560772353441 742 (-3.37294e+223)}
; -1.7414564710607525199748124578036367893218994140625p953 < -1.4579804918310872441367109786369837820529937744140625p742 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111000 #b1011110111010000000101110101111010011101000011101000)))
(assert (= y (fp #b1 #b11011100101 #b0111010100111110001101011010001010011110110110100001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

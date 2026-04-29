(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9218451935949099063094536177231930196285247802734375p1006 {+ 4151621670367319 1006 (1.31794e+303)}
; Y = 1.0461553924502224877102207756252028048038482666015625p299 {+ 207865408239961 299 (1.06553e+090)}
; 1.9218451935949099063094536177231930196285247802734375p1006 > 1.0461553924502224877102207756252028048038482666015625p299 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101101 #b1110101111111110000010111110111001110111000001010111)))
(assert (= y (fp #b0 #b10100101010 #b0000101111010000110101101111110100011011100101011001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

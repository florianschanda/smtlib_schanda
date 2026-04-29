(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9329794441880123745391983902663923799991607666015625p385 {- 4201765877189465 385 (-1.52327e+116)}
; Y = -1.523635257675874488114686755579896271228790283203125p929 {- 2358243551347122 929 (-6.91428e+279)}
; -1.9329794441880123745391983902663923799991607666015625p385 < -1.523635257675874488114686755579896271228790283203125p929 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110000000 #b1110111011010111101111011010100010100000101101011001)))
(assert (= y (fp #b1 #b11110100000 #b1000011000001100111101011101001011000000000110110010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.03064024259658371107661878340877592563629150390625p-610 {+ 137991385140516 -610 (2.42555e-184)}
; Y = 1.4814878159175590699447866427362896502017974853515625p657 {+ 2168428348349753 657 (8.85942e+197)}
; 1.03064024259658371107661878340877592563629150390625p-610 < 1.4814878159175590699447866427362896502017974853515625p657 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110011101 #b0000011111011000000010011111011111100100110100100100)))
(assert (= y (fp #b0 #b11010010000 #b0111101101000010110010010001011011001001110100111001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7304375220593131157187372082262299954891204833984375p851 {+ 3289598152163751 851 (2.59826e+256)}
; Y = 1.670724812690634220047058988711796700954437255859375p565 {+ 3020676016501686 565 (2.01768e+170)}
; 1.7304375220593131157187372082262299954891204833984375p851 > 1.670724812690634220047058988711796700954437255859375p565 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101010010 #b1011101011111101111101000001010100000100000110100111)))
(assert (= y (fp #b0 #b11000110100 #b1010101110110100100111110000111100011111001110110110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

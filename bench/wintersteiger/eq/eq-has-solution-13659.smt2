(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.24859056768274445659017146681435406208038330078125p493 {- 1119552387983828 493 (-3.19307e+148)}
; Y = 1.1070606700933611765691466644057072699069976806640625p-597 {+ 482158393938497 -597 (2.13434e-180)}
; -1.24859056768274445659017146681435406208038330078125p493 = 1.1070606700933611765691466644057072699069976806640625p-597 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111101100 #b0011111110100011101000011010011001001010100111010100)))
(assert (= y (fp #b0 #b00110101010 #b0001101101101000010100111111110010111101001001000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

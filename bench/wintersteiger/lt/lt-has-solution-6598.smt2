(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.574341769781194333432949861162342131137847900390625p-667 {+ 2586605380369898 -667 (2.57094e-201)}
; Y = 1.728033923878067756874088445329107344150543212890625p779 {+ 3278773308290346 779 (5.49438e+234)}
; 1.574341769781194333432949861162342131137847900390625p-667 < 1.728033923878067756874088445329107344150543212890625p779 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101100100 #b1001001100001000000011111110110111101111110111101010)))
(assert (= y (fp #b0 #b11100001010 #b1011101001100000011011100110010101101111010100101010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

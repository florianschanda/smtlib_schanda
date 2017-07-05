(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.602435202875969633140584846842102706432342529296875p-721 {- 2713126955187086 -721 (-1.45263e-217)}
; Y = -1.4415328293401525883155045448802411556243896484375p-927 {- 1988487085688152 -927 (-1.27063e-279)}
; -1.602435202875969633140584846842102706432342529296875p-721 > -1.4415328293401525883155045448802411556243896484375p-927 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100101110 #b1001101000111001001100011000011001001111101110001110)))
(assert (= y (fp #b1 #b00001100000 #b0111000100001000010010111010011000100000010101011000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

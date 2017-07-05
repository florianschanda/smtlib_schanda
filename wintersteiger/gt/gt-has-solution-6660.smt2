(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.781986820159029871746270146104507148265838623046875p369 {- 3521755551876846 369 (-2.14276e+111)}
; Y = 1.820747072376378117297690550913102924823760986328125p528 {+ 3696316209319682 528 (1.59988e+159)}
; -1.781986820159029871746270146104507148265838623046875p369 > 1.820747072376378117297690550913102924823760986328125p528 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110000 #b1100100000110000010010011100101001111100011011101110)))
(assert (= y (fp #b0 #b11000001111 #b1101001000011100011110101110101000100100111100000010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

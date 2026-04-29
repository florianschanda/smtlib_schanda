(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.123534480932919077389442463754676282405853271484375p574 {- 556349842296902 574 (-6.94711e+172)}
; Y = -1.6676156812346205615682492862106300890445709228515625p490 {- 3006673733234937 490 (-5.33082e+147)}
; -1.123534480932919077389442463754676282405853271484375p574 < -1.6676156812346205615682492862106300890445709228515625p490 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000111101 #b0001111110011111111101001010101110001001000001000110)))
(assert (= y (fp #b1 #b10111101001 #b1010101011101000110111000111110100110011000011111001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
